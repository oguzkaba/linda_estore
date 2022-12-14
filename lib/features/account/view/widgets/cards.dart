import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/extensions/asset_extansion.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../core/widgets/button/ebutton_widget.dart';
import '../../../../core/widgets/button/iconbutton_widget.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text(LocaleKeys.account_action_cards_title.locale,
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
      body: Stack(fit: StackFit.expand, children: [
        Positioned(
            right: (context.width - 420) / 2,
            left: (context.width - 420) / 2,
            child:
                _buildCard('A Bank', '45421414141414', ColorConstants.myDark)),
        Positioned(
          right: (context.width - 420) / 2,
          left: (context.width - 420) / 2,
          top: 60,
          child: _buildCard('B Bank', '55421414141414', ColorConstants.myBlue),
        ),
        Positioned(
          right: (context.width - 420) / 2,
          left: (context.width - 420) / 2,
          top: 120,
          child: _buildCard('C Bank', '34421414141414', ColorConstants.myBlack),
        ),
      ]),
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
        child: EButtonWidget(
            text: LocaleKeys.account_action_cards_buttonText.locale,
            onPress: () => context.router.push((const EditCard()))),
      ),
    );
  }

  Widget _buildCard(String bankName, String cardNumber, Color bgColor) {
    return GestureDetector(
      onTap: () => debugPrint(bankName),
      child: CreditCardWidget(
        height: 220,
        width: 420,
        isSwipeGestureEnabled: false,
        bankName: bankName,
        isHolderNameVisible: true,
        cardHolderName: 'OGUZ KABA',
        cardNumber: cardNumber,
        cvvCode: '',
        expiryDate: '08/25',
        cardBgColor: bgColor,
        onCreditCardWidgetChange: (creditCardBrand) {},
        showBackView: false,
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
    );
  }
}
