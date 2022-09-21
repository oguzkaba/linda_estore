import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/image_extansion.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/bloc/cubit/login_cubit.dart';

import '../../../../core/constants/app/colors.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../product/widgets/ebutton_widget.dart';
import '../../../../product/widgets/iconbutton_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: context.horizontalPaddingMedium,
        child: Column(
          mainAxisAlignment: context.isKeyBoardOpen
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            Visibility(
              visible: !context.isKeyBoardOpen,
              child: Column(
                children: [
                  const Text("Hello Again!",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Padding(padding: context.paddingLow),
                  Text("Welcome back you've been missed!",
                      style: TextStyle(color: ColorConstants.myDark)),
                  SvgPicture.asset(
                    "login".toSVG,
                    height: context.height * .35,
                  )
                ],
              ),
            ),
            Padding(padding: context.paddingLow),
            const TextFieldWidget(
                pIcon: Icons.person_outlined,
                labelText: "UserName",
                hintText: "Enter username"),
            Padding(padding: context.paddingLow),
            BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
              if (state is ToogleSuffixIcon) {
                bool visibleValue = state.visibility;
                return TextFieldWidget(
                    pIcon: Icons.lock_outlined,
                    sIcon: visibleValue
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    suffixOnPress: () => context
                        .read<LoginCubit>()
                        .toogleSuffixIcon(!visibleValue),
                    obscureText: visibleValue ? false : true,
                    labelText: "Password",
                    hintText: "Enter password");
              } else {
                return Container();
              }
            }),
            Padding(padding: context.paddingLow),
            Align(
              alignment: Alignment.centerRight,
              child: Text("Recovery Password",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.myDark)),
            ),
            Padding(padding: context.paddingLow),
            EButtonWidget(onPress: () => context.router.push(const HomeView())),
            Padding(padding: context.paddingLow),
            Text.rich(
                TextSpan(text: "Don't have account? ", children: [
                  TextSpan(
                      text: " +Register",
                      style: TextStyle(color: ColorConstants.primaryColor),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.router.push(RegisterView());
                        })
                ]),
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.myDark)),
            Padding(padding: context.paddingLow),
            const Divider(
              indent: 100,
              endIndent: 100,
            ),
            Padding(padding: context.paddingLow),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtonWidget(
                  tooltip: "Google",
                  icon: FontAwesomeIcons.google,
                  iColor: ColorConstants.myRed,
                ),
                IconButtonWidget(
                    tooltip: "Apple",
                    icon: FontAwesomeIcons.apple,
                    iColor: ColorConstants.myMediumGrey),
                IconButtonWidget(
                  tooltip: "Facebook",
                  icon: FontAwesomeIcons.facebookF,
                  iColor: ColorConstants.myBlue,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
