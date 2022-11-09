import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/extansions/string_extansion.dart';

import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../product/widgets/auth_top_widget.dart';
import '../../../../product/widgets/divider_widget.dart';
import '../../../../product/widgets/ebutton_widget.dart';
import '../../../../product/widgets/richtext_widget.dart';
import '../../../../product/widgets/social_button_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';
import '../../login/bloc/cubit/login_cubit.dart';

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
              AuthTopWidget(
                  ctx: context,
                  title: LocaleKeys.register_topTitle.locale,
                  subTitle: LocaleKeys.register_topMessage.locale,
                  image: "auth"),
              Padding(padding: context.paddingLow),
              _buildInput(LocaleKeys.register_tfieldNameHint.locale,
                  Icons.person_outlined),
              Padding(padding: context.paddingLow),
              _buildInput(LocaleKeys.register_tfieldEmailHint.locale,
                  Icons.email_outlined),
              Padding(padding: context.paddingLow),
              _buildPassInput(
                  LocaleKeys.register_tfieldPassHint.locale, context),
              Padding(padding: context.paddingLow),
              _buildPassInput(
                  LocaleKeys.register_tfieldPass2Hint.locale, context),
              Padding(padding: context.paddingLow),
              //*sign up button
              EButtonWidget(
                  text: LocaleKeys.register_buttonText.locale,
                  onPress: () => context.router.push(const LoginView())),
              Padding(padding: context.paddingLow),
              //*signup-or-social text
              RichTextWidget(
                  actionName: LocaleKeys.register_login.locale,
                  text: LocaleKeys.register_haveAccount.locale,
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

  Widget _buildPassInput(String hintText, BuildContext context) {
    final visibility = context.watch<LoginCubit>().state.visibility;
    return TextFieldWidget(
        pIcon: Icons.lock_outlined,
        sIcon: visibility
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,
        suffixOnPress: () =>
            context.read<LoginCubit>().toogleSuffixIcon(!visibility),
        obscureText: visibility ? false : true,
        hintText: hintText);
  }

  TextFieldWidget _buildInput(String hintText, IconData icon) {
    return TextFieldWidget(pIcon: icon, hintText: hintText);
  }
}
