import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/bloc/cubit/login_cubit.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../product/widgets/divider_widget.dart';
import '../../../../product/widgets/ebutton_widget.dart';
import '../../../../product/widgets/richtext_widget.dart';
import '../../../../product/widgets/social_button_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';
import '../../../../product/widgets/auth_top_widget.dart';

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: context.horizontalPaddingMedium,
        child: Column(
          children: [
            const AuthTopWidget(
                title: "Forgot Password",
                subTitle:
                    "Enter you registered email you a Password reset link",
                image: "auth"),
            Padding(padding: context.paddingLow),
            _buildInput(),
            //*confirm button
            Padding(padding: context.paddingLow),
            EButtonWidget(
                text: "Confirm",
                onPress: () =>
                    context.router.push(const EmailVerificationView())),
            Padding(padding: context.paddingLow),
            //*cancel button
            TextButton(
                child: const Text("Cancel"),
                onPressed: () => context.router.push(const LoginView())),
          ],
        ),
      ),
    );
  }

  TextFieldWidget _buildInput() {
    return const TextFieldWidget(
        pIcon: Icons.email_outlined,
        labelText: "Email",
        hintText: "Enter Email");
  }
}
