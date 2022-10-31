import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../product/widgets/export_widget.dart';
import '../../../../product/widgets/iconbutton_widget.dart';

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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Checkout",
                style: TextStyle(color: ColorConstants.myBlack)),
            leading: Padding(
              padding: const EdgeInsets.all(4.0),
              child: IconButtonWidget(
                  size: 16,
                  onPress: () => context.router.pop(),
                  icon: Icons.chevron_left_rounded,
                  iColor: ColorConstants.myMediumGrey,
                  tooltip: "Back"),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            centerTitle: true),
        body: Stepper(
          controlsBuilder: (context, details) =>
              context.emptySizedHeightBoxHigh,
          currentStep: 2,
          elevation: 1,
          type: StepperType.horizontal,
          steps: [
            _buildDeliveryStep(context),
            _buildAddressStep(context),
            _buildPaymentStep(context),
          ],
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
                onPress: () => context.router.pop(),
                text: 'Cancel',
                height: 40,
                width: 125,
                bgColor: ColorConstants.myWhite,
                tColor: ColorConstants.primaryColor,
                useBorder: true,
              ),
              context.emptySizedWidthBoxLow,
              EButtonWidget(
                onPress: () {},
                text: 'Continue',
                height: 40,
                width: 125,
              ),
            ])));
  }

  Step _buildPaymentStep(BuildContext context) {
    return Step(
        state: StepState.indexed,
        title: const Text(""),
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
                  "XXXX XXXX XXXX XXXX",
                  LocaleKeys
                      .account_action_cards_editCard_tfieldCardNoHint.locale,
                  Icons.credit_card_rounded),
              expiryDateDecoration: customInputDecoration(
                  "MM/YY",
                  LocaleKeys
                      .account_action_cards_editCard_tfieldDateHint.locale,
                  Icons.date_range_rounded),
              cvvCodeDecoration: customInputDecoration(
                  "XXX",
                  LocaleKeys.account_action_cards_editCard_tfieldCVVHint.locale,
                  Icons.password_rounded),
              cardHolderDecoration: customInputDecoration(
                  "",
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
                  "Save this card details",
                  style: Theme.of(context).textTheme.bodySmall,
                )
              ]),
            )
          ],
        ),
        label: const Text("Payment"));
  }

  Step _buildAddressStep(BuildContext context) {
    return Step(
        state: StepState.complete,
        title: const Text(""),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildListTile(context,
                title: "Home", subTitle: "76614 Gulseth Lane", selected: true),
            _buildListTile(context,
                title: "Work",
                subTitle: "555 Pierstorff Junction",
                selected: false),
            _buildListTile(context,
                title: "Other",
                subTitle: "3848 Farmco Crossing",
                selected: false),
          ],
        ),
        isActive: true,
        label: const Text("Address"));
  }

  Step _buildDeliveryStep(BuildContext context) {
    return Step(
        state: StepState.complete,
        title: const Text(""),
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildListTile(context,
                title: "Standart Delivery",
                subTitle: "Order will be delivered between 3-5 business days",
                selected: true),
            _buildListTile(context,
                title: "Next Day Delivery",
                subTitle:
                    "Place your order before 6pm and your items will be delivered the next day",
                selected: false),
            _buildListTile(context,
                title: "Nominated Delivery",
                subTitle:
                    "Pick a particular date from the calendar and order will be delivered on selected",
                selected: false)
          ],
        ),
        isActive: true,
        label: const Text("Delivery"));
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
