import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/init/network/service/network_service.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../product/widgets/auth_top_widget.dart';
import '../../../../product/widgets/divider_widget.dart';
import '../../../../product/widgets/ebutton_widget.dart';
import '../../../../product/widgets/richtext_widget.dart';
import '../../../../product/widgets/social_button_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';
import '../../service/auth_service.dart';
import '../bloc/cubit/login_cubit.dart';
import '../model/login_request_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;
  TextEditingController unameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    unameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: context.horizontalPaddingMedium,
          child: Column(
            mainAxisAlignment: context.isKeyBoardOpen
                ? MainAxisAlignment.start
                : MainAxisAlignment.center,
            children: [
              AuthTopWidget(
                  title: LocaleKeys.login_topTitle.locale,
                  subTitle: LocaleKeys.login_topMessage.locale,
                  image: "auth"),
              Padding(padding: context.paddingLow),
              _buildUnameInput(),
              Padding(padding: context.paddingLow),
              _buildPassInput(),
              //*forgot password
              _buildForgotButton(),
              //*sign in button
              EButtonWidget(
                  text: LocaleKeys.login_buttonText.locale,
                  onPress: () async {
                    await AuthService(manager, _scaffoldKey).loginUser(
                        model: LoginRequestModel(
                            username:
                                /*unameController.text.trim() */ "mor_2314",
                            password:
                                /* passwordController.text.trim() */ "83r5^_"));
                    context.router.push(Dashboard());
                  }),
              Padding(padding: context.paddingLow),
              //*signup-or-social text
              RichTextWidget(
                  actionName: LocaleKeys.login_register.locale,
                  text: LocaleKeys.login_haveAccount.locale,
                  action: () => context.router.push(const RegisterView())),
              const DividerWidget(),
              //*social button
              const SocialIconButtonWidget()
            ],
          ),
        ),
      ),
    );
  }

  BlocBuilder<LoginCubit, LoginState> _buildPassInput() {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      if (state is ToogleSuffixIcon) {
        bool visibleValue = state.visibility;
        return TextFieldWidget(
            controller: passwordController,
            pIcon: Icons.lock_outlined,
            sIcon: visibleValue
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            suffixOnPress: () =>
                context.read<LoginCubit>().toogleSuffixIcon(!visibleValue),
            obscureText: visibleValue ? false : true,
            labelText: "Password",
            hintText: LocaleKeys.login_tfieldPassHint.locale);
      } else {
        return context.emptySizedHeightBoxLow;
      }
    });
  }

  TextFieldWidget _buildUnameInput() {
    return TextFieldWidget(
        controller: unameController,
        pIcon: Icons.person_outlined,
        labelText: "UserName",
        hintText: LocaleKeys.login_tfieldUnameHint.locale);
  }

  Align _buildForgotButton() {
    return Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () => context.router.push(const ForgotView()),
          child: Text(
            LocaleKeys.login_forgot.locale,
            style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: ColorConstants.myDark),
          ),
        ));
  }
}
