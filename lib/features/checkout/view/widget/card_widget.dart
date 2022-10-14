import 'package:auto_route/auto_route.dart';
import '../../../../core/init/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:linda_wedding_ecommerce/core/extansions/asset_extansion.dart';
import 'package:linda_wedding_ecommerce/product/widgets/ebutton_widget.dart';

import '../../../../core/constants/app/colors_constants.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(padding: context.paddingLow),
            const Text("Checkout",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Padding(padding: context.paddingLow),
            CreditCardWidget(
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
              onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
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
                child: Column(
                  children: <Widget>[
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
                          "Card Number",
                          Icons.credit_card_rounded),
                      expiryDateDecoration: customInputDecoration(
                          "MM/YY", "Expired Date", Icons.date_range_rounded),
                      cvvCodeDecoration: customInputDecoration(
                          "XXX", "CVV", Icons.password_rounded),
                      cardHolderDecoration: customInputDecoration(
                          "", "Card Holder", Icons.abc_rounded),
                      onCreditCardModelChange: onCreditCardModelChange,
                    ),
                    context.emptySizedHeightBoxNormal,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EButtonWidget(
                            text: "Cancel",
                            width: context.width * .4,
                            onPress: () => context.router.push(AppView(id: 1)),
                            bgColor: ColorConstants.myWhite,
                            useBorder: true,
                            tColor: ColorConstants.primaryColor),
                        context.emptySizedWidthBoxNormal,
                        EButtonWidget(text: "Save", width: context.width * .4),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
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
        hintStyle: const TextStyle(fontSize: 14),
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
