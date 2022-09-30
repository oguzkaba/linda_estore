import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/image_extansion.dart';

import '../../core/constants/app/colors_constants.dart';

class AuthTopWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;

  const AuthTopWidget({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !context.isKeyBoardOpen,
      child: Column(
        children: [
          Text(title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          Text(subTitle, style: TextStyle(color: ColorConstants.myDark)),
          Padding(padding: context.paddingLow),
          SvgPicture.asset(
            image.toSVG,
            height: context.height * .35,
          )
        ],
      ),
    );
  }
}
