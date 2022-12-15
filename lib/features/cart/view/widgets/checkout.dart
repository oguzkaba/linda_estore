// ignore_for_file: unused_import

import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/lang_manager.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/enums/checkout_enums.dart';
import '../../../../core/extensions/asset_extansion.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../core/widgets/button/button.dart';
import '../../../../core/widgets/loading/loading.dart';
import '../../bloc/cart_bloc.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  CheckoutStateEnum cState = CheckoutStateEnum.delivery;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(LocaleKeys.cart_checkout_title.locale,
                style: TextStyle(color: ColorConstants.myBlack)),
            leading: Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButtonWidget(
                  size: 16,
                  onPress: () => context.router.pop(),
                  icon: Icons.chevron_left_rounded,
                  iColor: ColorConstants.myMediumGrey,
                  tooltip: 'Back'),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true),
        body: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () =>
                  const LoadingIndicatorWidget(lottieName: 'cart_loading'),
              checkout: (checkoutState) {
                cState = checkoutState;
                return Stepper(
                  controlsBuilder: (context, details) =>
                      context.emptySizedHeightBoxHigh,
                  currentStep: cState.idx,
                  elevation: 1,
                  type: StepperType.horizontal,
                  steps: [
                    _buildDeliveryStep(context),
                    _buildAddressStep(context),
                    _buildPaymentStep(context),
                    _buildSuccessStep(context),
                  ],
                );
              },
              orElse: () => context.emptySizedHeightBoxHigh,
            );
          },
        ),
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: ColorConstants.myWhite,
              boxShadow: [
                BoxShadow(
                  color: ColorConstants.myLightGrey,
                  offset: const Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            height: 60,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              EButtonWidget(
                onPress: () => context.router
                    .push(DashboardRouter(children: [CartView()])),
                text: LocaleKeys.cart_checkout_button2Text.locale,
                height: 40,
                width: 125,
                bgColor: ColorConstants.myWhite,
                tColor: ColorConstants.primaryColor,
                useBorder: true,
              ),
              context.emptySizedWidthBoxLow,
              EButtonWidget(
                onPress: () {
                  switch (cState) {
                    case CheckoutStateEnum.delivery:
                      context.read<CartBloc>().add(CartEvent.checkout(
                          checkoutState: CheckoutStateEnum.adress));
                      break;
                    case CheckoutStateEnum.adress:
                      context.read<CartBloc>().add(CartEvent.checkout(
                          checkoutState: CheckoutStateEnum.payment));
                      break;
                    case CheckoutStateEnum.payment:
                      context.read<CartBloc>().add(CartEvent.checkout(
                          checkoutState: CheckoutStateEnum.success));
                      break;
                    default:
                  }
                },
                text: LocaleKeys.cart_checkout_buttonText.locale,
                height: 40,
                width: 125,
              ),
            ])));
  }

  Step _buildDeliveryStep(BuildContext context) {
    return Step(
        isActive: cState.idx == 0,
        state: cState.idx > 0 ? StepState.complete : StepState.indexed,
        title: const Text(''),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildListTile(context,
                title: LocaleKeys.cart_checkout_delivery_opt1_title.locale,
                subTitle: LocaleKeys.cart_checkout_delivery_opt1_content.locale,
                selected: true),
            _buildListTile(context,
                title: LocaleKeys.cart_checkout_delivery_opt2_title.locale,
                subTitle: LocaleKeys.cart_checkout_delivery_opt2_content.locale,
                selected: false),
            _buildListTile(context,
                title: LocaleKeys.cart_checkout_delivery_opt2_title.locale,
                subTitle: LocaleKeys.cart_checkout_delivery_opt3_content.locale,
                selected: false)
          ],
        ),
        label: Text(LocaleKeys.cart_checkout_delivery_title.locale,
            style: Theme.of(context).textTheme.bodySmall));
  }

  Step _buildAddressStep(BuildContext context) {
    return Step(
        isActive: cState.idx == 1,
        state: cState.idx > 1 ? StepState.complete : StepState.indexed,
        title: const Text(''),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildListTile(context,
                title: LocaleKeys.cart_checkout_adress_opt1_title.locale,
                subTitle: LocaleKeys.cart_checkout_adress_opt1_content.locale,
                selected: true),
            _buildListTile(context,
                title: LocaleKeys.cart_checkout_adress_opt2_title.locale,
                subTitle: LocaleKeys.cart_checkout_adress_opt2_content.locale,
                selected: false),
            _buildListTile(context,
                title: LocaleKeys.cart_checkout_adress_opt3_title.locale,
                subTitle: LocaleKeys.cart_checkout_adress_opt3_content.locale,
                selected: false),
          ],
        ),
        label: Text(LocaleKeys.cart_checkout_adress_title.locale,
            style: Theme.of(context).textTheme.bodySmall));
  }

  Step _buildPaymentStep(BuildContext context) {
    return Step(
        isActive: cState.idx == 2,
        state: cState.idx > 2 ? StepState.complete : StepState.indexed,
        title: const Text(''),
        content: Column(
          children: [
            CreditCardForm(
              formKey: formKey,
              obscureCvv: false,
              obscureNumber: false,
              cardNumber: cardNumber,
              cvvCode: cvvCode,
              isHolderNameVisible: true,
              isCardNumberVisible: true,
              isExpiryDateVisible: true,
              cardHolderName: cardHolderName.toUpperCase(),
              expiryDate: expiryDate,
              themeColor: ColorConstants.primaryColor,
              cardNumberDecoration: customInputDecoration(
                  'XXXX XXXX XXXX XXXX',
                  LocaleKeys
                      .account_action_cards_editCard_tfieldCardNoHint.locale,
                  Icons.credit_card_rounded),
              expiryDateDecoration: customInputDecoration(
                  'MM/YY',
                  LocaleKeys
                      .account_action_cards_editCard_tfieldDateHint.locale,
                  Icons.date_range_rounded),
              cvvCodeDecoration: customInputDecoration(
                  'XXX',
                  LocaleKeys.account_action_cards_editCard_tfieldCVVHint.locale,
                  Icons.password_rounded),
              cardHolderDecoration: customInputDecoration(
                  '',
                  LocaleKeys.account_action_cards_editCard_tfieldCardHolderHint
                      .locale,
                  Icons.abc_rounded),
              onCreditCardModelChange: onCreditCardModelChange,
            ),
            context.emptySizedHeightBoxLow3x,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(children: [
                Checkbox(
                  shape: const CircleBorder(),
                  value: true,
                  onChanged: (value) {},
                  activeColor: ColorConstants.primaryColor,
                ),
                context.emptySizedWidthBoxLow,
                Text(
                  LocaleKeys.cart_checkout_payment_saveCard.locale,
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ]),
            )
          ],
        ),
        label: Text(LocaleKeys.cart_checkout_payment_title.locale,
            style: Theme.of(context).textTheme.bodySmall));
  }

  Step _buildSuccessStep(BuildContext context) {
    return Step(
        state: cState.idx == 3 ? StepState.complete : StepState.indexed,
        title: const Text(''),
        content: Center(
            child: Column(children: [
          Lottie.asset('payment'.toLottie, repeat: false, height: 300),
          FadeIn(
              duration: context.durationNormal,
              child: Text(LocaleKeys.cart_checkout_success_message.locale,
                  style: Theme.of(context).textTheme.titleMedium))
        ])),
        isActive: cState.idx == 3,
        label: Text(LocaleKeys.cart_checkout_success_title.locale,
            style: Theme.of(context).textTheme.bodySmall));
  }

  Widget _buildListTile(BuildContext context,
      {required String title,
      required String subTitle,
      required bool selected}) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: ListTile(
        selected: selected,
        selectedColor: ColorConstants.myBlack,
        tileColor: ColorConstants.myLightGrey.withOpacity(.2),
        selectedTileColor: ColorConstants.secondaryColor.withOpacity(.2),
        shape: selected
            ? RoundedRectangleBorder(
                side: BorderSide(color: ColorConstants.primaryColor),
                borderRadius: BorderRadius.circular(10))
            : null,
        contentPadding: context.paddingLow,
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subTitle),
        trailing: Radio(
          value: selected ? 1 : 0,
          groupValue: 1,
          activeColor: ColorConstants.primaryColor,
          onChanged: (value) {},
        ),
      ),
    );
  }

  InputDecoration customInputDecoration(
          String hintText, String labelText, IconData pIcon) =>
      InputDecoration(
        prefixIcon: Icon(pIcon, size: 20, color: ColorConstants.primaryColor),
        contentPadding: context.horizontalPaddingMedium,
        label: Text(labelText),
        labelStyle: TextStyle(color: ColorConstants.myBlack),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodySmall,
        filled: true,
        fillColor: ColorConstants.secondaryColor.withOpacity(.15),
        focusedBorder: GradientOutlineInputBorder(
            gradient: LinearGradient(colors: [
              ColorConstants.primaryColor,
              ColorConstants.secondaryColor,
              ColorConstants.primaryColor,
            ]),
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      );

  void onCreditCardModelChange(CreditCardModel? creditCardModel) =>
      setState(() {
        cardNumber = creditCardModel!.cardNumber;
        expiryDate = creditCardModel.expiryDate;
        cardHolderName = creditCardModel.cardHolderName;
        cvvCode = creditCardModel.cvvCode;
        isCvvFocused = creditCardModel.isCvvFocused;
      });
}
