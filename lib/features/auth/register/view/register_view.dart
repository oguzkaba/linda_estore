import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/bloc/cubit/login_cubit.dart';

import '../../../../core/init/routes/routes.gr.dart';
import '../../../../product/widgets/auth_top_widget.dart';
import '../../../../product/widgets/divider_widget.dart';
import '../../../../product/widgets/ebutton_widget.dart';
import '../../../../product/widgets/richtext_widget.dart';
import '../../../../product/widgets/social_button_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: context.paddingMedium,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const AuthTopWidget(
                  title: "Sign Up",
                  subTitle: "Welcome back please sign up to continue",
                  image: "auth"),
              Padding(padding: context.paddingLow),
              _buildInput("Enter Name", Icons.person_outlined),
              Padding(padding: context.paddingLow),
              _buildInput("Enter Email", Icons.email_outlined),
              Padding(padding: context.paddingLow),
              _buildPassInput("Enter password"),
              Padding(padding: context.paddingLow),
              _buildPassInput("Enter password again"),
              Padding(padding: context.paddingLow),
              //*sign up button
              EButtonWidget(
                  text: "Create Account",
                  onPress: () => context.router.push(const LoginView())),
              Padding(padding: context.paddingLow),
              //*signup-or-social text
              RichTextWidget(
                  actionName: " +Login",
                  text: "Do you have account? ",
                  action: () => context.router.push(const LoginView())),
              const DividerWidget(),
              //*social button
              const SocialIconButtonWidget()
            ],
          ),
        ),
      ),
    );
  }

  BlocBuilder<LoginCubit, LoginState> _buildPassInput(String hintText) {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      if (state is ToogleSuffixIcon) {
        bool visibleValue = state.visibility;
        return TextFieldWidget(
            pIcon: Icons.lock_outlined,
            sIcon: visibleValue
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            suffixOnPress: () =>
                context.read<LoginCubit>().toogleSuffixIcon(!visibleValue),
            obscureText: visibleValue ? false : true,
            labelText: "Password",
            hintText: hintText);
      } else {
        return context.emptySizedHeightBoxLow;
      }
    });
  }

  TextFieldWidget _buildInput(String hintText, IconData icon) {
    return TextFieldWidget(
        pIcon: icon, labelText: "UserName", hintText: hintText);
  }
}
