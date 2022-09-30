import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/colors_constants.dart';
import 'package:linda_wedding_ecommerce/core/init/routes/routes.gr.dart';
import 'package:linda_wedding_ecommerce/product/widgets/auth_top_widget.dart';
import 'package:pinput/pinput.dart';

import '../../../../product/widgets/richtext_widget.dart';

class EmailVerificationView extends StatefulWidget {
  const EmailVerificationView({super.key});

  @override
  State<EmailVerificationView> createState() => _EmailVerificationViewState();
}

class _EmailVerificationViewState extends State<EmailVerificationView> {
  final controller = TextEditingController();
  final focusNode = FocusNode();

  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: ColorConstants.myDark,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: ColorConstants.secondaryColor.withOpacity(.15),
        border: Border.all(color: ColorConstants.myWhite),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: ColorConstants.primaryColor),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: ColorConstants.myLightGrey,
      ),
    );

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: context.paddingMedium,
          child: Center(
            child: Column(children: [
              const AuthTopWidget(
                  title: "Email Verification",
                  subTitle: "Enter the code we sent to your e-mail.",
                  image: "auth"),
              Pinput(
                controller: controller,
                focusNode: focusNode,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                validator: (s) {
                  return s == '2222' ? null : 'Pin is incorrect';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => pin == '2222'
                    ? context.router.push(const HomeView())
                    : null,
              ),
              Padding(padding: context.paddingLow),
              RichTextWidget(
                  actionName: " +Resend",
                  text: "Didn't receive code? ",
                  action: () => context.router.push(const RegisterView())),
            ]),
          ),
        ),
      ),
    );
  }
}
