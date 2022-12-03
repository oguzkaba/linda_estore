import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/app/colors_constants.dart';
import 'iconbutton_widget.dart';

class SocialIconButtonWidget extends StatelessWidget {
  const SocialIconButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButtonWidget(
          tooltip: 'Google',
          icon: FontAwesomeIcons.google,
          iColor: ColorConstants.myRed,
        ),
        IconButtonWidget(
            tooltip: 'Apple',
            icon: FontAwesomeIcons.apple,
            iColor: ColorConstants.myMediumGrey),
        IconButtonWidget(
          tooltip: 'Facebook',
          icon: FontAwesomeIcons.facebookF,
          iColor: ColorConstants.myBlue,
        ),
      ],
    );
  }
}
