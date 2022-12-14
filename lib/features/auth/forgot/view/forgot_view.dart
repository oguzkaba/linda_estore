import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../core/widgets/top/auth_top_widget.dart';
import '../../../../core/widgets/button/ebutton_widget.dart';
import '../../../../core/widgets/textfield/textfield_widget.dart';

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: context.paddingMedium,
          child: Column(
            children: [
              AuthTopWidget(
                  ctx: context,
                  title: LocaleKeys.forgot_topTitle.locale,
                  subTitle: LocaleKeys.forgot_topMessage.locale,
                  image: 'auth'),
              Padding(padding: context.paddingLow),
              _buildInput(),
              //*confirm button
              Padding(padding: context.paddingLow),
              EButtonWidget(
                  text: LocaleKeys.forgot_buttonText.locale,
                  onPress: () =>
                      context.router.push(const EmailVerificationView())),
              Padding(padding: context.paddingLow),
              //*cancel button
              EButtonWidget(
                  text: LocaleKeys.forgot_button2Text.locale,
                  bgColor: ColorConstants.myWhite,
                  tColor: ColorConstants.primaryColor,
                  useBorder: true,
                  onPress: () => context.router.pushNamed('/login')),
            ],
          ),
        ),
      ),
    );
  }

  TextFieldWidget _buildInput() {
    return TextFieldWidget(
        pIcon: Icons.email_outlined,
        hintText: LocaleKeys.forgot_tfieldEmailHint.locale);
  }
}
