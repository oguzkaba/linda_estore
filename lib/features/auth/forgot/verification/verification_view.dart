import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../core/widgets/text/text.dart';
import '../../../../core/widgets/top/auth_top_widget.dart';

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

  // @override
  // void dispose() {
  //   controller.dispose();
  //   focusNode.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: Theme.of(context).textTheme.titleLarge,
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
              AuthTopWidget(
                  ctx: context,
                  title: LocaleKeys.verification_topTitle.locale,
                  subTitle: LocaleKeys.verification_topMessage.locale,
                  image: 'auth'),
              Pinput(
                controller: controller,
                focusNode: focusNode,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                validator: (s) {
                  return s == '2222'
                      ? null
                      : LocaleKeys.verification_inCorrect.locale;
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) =>
                    pin == '2222' //TODO add dynamic pin control
                        ? context.router
                            .push(DashboardRouter(children: const [HomeView()]))
                        : null,
              ),
              Padding(padding: context.paddingLow),
              RichTextWidget(
                  actionName: LocaleKeys.verification_resend.locale,
                  text: LocaleKeys.verification_receiveCode.locale,
                  action: () => context.router.push(const ForgotView())),
            ]),
          ),
        ),
      ),
    );
  }
}
