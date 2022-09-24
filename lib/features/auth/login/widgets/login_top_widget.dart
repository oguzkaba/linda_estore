import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/image_extansion.dart';

import '../../../../core/constants/app/colors_constants.dart';

class LoginTopWidget extends StatelessWidget {
  const LoginTopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !context.isKeyBoardOpen,
      child: Column(
        children: [
          const Text("Hello Again!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Padding(padding: context.paddingLow),
          Text("Welcome back you've been missed!",
              style: TextStyle(color: ColorConstants.myDark)),
          SvgPicture.asset(
            "login".toSVG,
            height: context.height * .35,
          )
        ],
      ),
    );
  }
}
