import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/extensions/asset_extansion.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/widgets/button/ebutton_widget.dart';
import '../../../../core/widgets/button/iconbutton_widget.dart';

class EditCard extends StatefulWidget {
  const EditCard({super.key});

  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  bool useGlassMorphism = false;
  bool useBackgroundImage = false;
  OutlineInputBorder? border;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Map<CardType, String> cardTypeIconAsset = <CardType, String>{
  //   CardType.visa: "creditcard/visa".toPNG,
  //   CardType.americanExpress: "creditcard/amex".toPNG,
  //   CardType.mastercard: "creditcard/mastercard".toPNG,
  //   CardType.discover: "creditcard/discover".toPNG,
  // };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: Text(LocaleKeys.account_action_cards_editCard_title.locale,
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
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CreditCardWidget(
                labelCardHolder: LocaleKeys
                    .account_action_cards_editCard_tfieldCardHolderHint.locale
                    .toUpperCase(),
                height: 220,
                width: 400,
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                bankName: 'A Bank',
                showBackView: isCvvFocused,
                obscureCardNumber: true,
                obscureCardCvv: true,
                isHolderNameVisible: true,
                cardBgColor: ColorConstants.myBlack,
                isSwipeGestureEnabled: true,
                onCreditCardWidgetChange: (creditCardBrand) {},
                customCardTypeIcons: <CustomCardTypeIcon>[
                  CustomCardTypeIcon(
                    cardType: CardType.mastercard,
                    cardImage: Image.asset(
                      'creditcard/mastercard'.toPNG,
                      height: 48,
                      width: 48,
                    ),
                  ),
                  CustomCardTypeIcon(
                    cardType: CardType.visa,
                    cardImage: Image.asset(
                      'creditcard/visa'.toPNG,
                      height: 48,
                      width: 48,
                    ),
                  ),
                  CustomCardTypeIcon(
                    cardType: CardType.americanExpress,
                    cardImage: Image.asset(
                      'creditcard/amex'.toPNG,
                      height: 48,
                      width: 48,
                    ),
                  ),
                  CustomCardTypeIcon(
                    cardType: CardType.discover,
                    cardImage: Image.asset(
                      'creditcard/discover'.toPNG,
                      height: 48,
                      width: 48,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: CreditCardForm(
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
                            .account_action_cards_editCard_tfieldCardNoHint
                            .locale,
                        Icons.credit_card_rounded),
                    expiryDateDecoration: customInputDecoration(
                        'MM/YY',
                        LocaleKeys.account_action_cards_editCard_tfieldDateHint
                            .locale,
                        Icons.date_range_rounded),
                    cvvCodeDecoration: customInputDecoration(
                        'XXX',
                        LocaleKeys
                            .account_action_cards_editCard_tfieldCVVHint.locale,
                        Icons.password_rounded),
                    cardHolderDecoration: customInputDecoration(
                        '',
                        LocaleKeys
                            .account_action_cards_editCard_tfieldCardHolderHint
                            .locale,
                        Icons.abc_rounded),
                    onCreditCardModelChange: onCreditCardModelChange,
                  ),
                ),
              ),
            ],
          ),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              EButtonWidget(
                  text: LocaleKeys
                      .account_action_cards_editCard_button2Text.locale,
                  width: context.width * .4,
                  onPress: () => context.router.pop(),
                  bgColor: ColorConstants.myWhite,
                  useBorder: true,
                  tColor: ColorConstants.primaryColor),
              context.emptySizedWidthBoxNormal,
              EButtonWidget(
                  text: LocaleKeys
                      .account_action_cards_editCard_buttonText.locale,
                  width: context.width * .4),
            ],
          ),
        ));
  }

  InputDecoration customInputDecoration(
          String hintText, String labelText, IconData pIcon) =>
      InputDecoration(
        prefixIcon: Icon(pIcon, size: 20, color: ColorConstants.primaryColor),
        contentPadding: context.horizontalPaddingMedium,
        label: Text(labelText),
        labelStyle: TextStyle(color: ColorConstants.myBlack),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelMedium,
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
        cardHolderName = creditCardModel.cardHolderName.toUpperCase();
        cvvCode = creditCardModel.cvvCode;
        isCvvFocused = creditCardModel.isCvvFocused;
      });
}
