import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/extansions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/network/service/network_service.dart';
import '../../../../core/init/routes/routes.gr.dart';
import '../../../../product/utils/custom_error_widgets.dart';
import '../../../../product/widgets/auth_top_widget.dart';
import '../../../../product/widgets/divider_widget.dart';
import '../../../../product/widgets/ebutton_widget.dart';
import '../../../../product/widgets/richtext_widget.dart';
import '../../../../product/widgets/social_button_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';
import '../../bloc/auth_bloc.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController unameController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    unameController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

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
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: context.isKeyBoardOpen
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              children: [
                AuthTopWidget(
                    ctx: context,
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
                BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                  if (state is LoginError) {
                    CustomErrorWidgets.showError(
                        context, state.error.toString());
                  }
                }, builder: (context, state) {
                  if (state is LoginSuccess) {
                    context.router.push(Dashboard());
                  }
                  return EButtonWidget(
                      text: state is LoginLoading
                          ? null
                          : LocaleKeys.login_buttonText.locale,
                      onPress: state is LoginLoading
                          ? null
                          : () {
                              if (_formKey.currentState!.validate()) {
                                context.read<AuthBloc>().add(AuthLogin(
                                    manager,
                                    _scaffoldKey,
                                    LoginRequestModel(
                                        // mor_2314 , 83r5^_
                                        username: unameController.text.trim(),
                                        password:
                                            passwordController.text.trim()),
                                    context));
                              }
                            });
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
      ),
    );
  }

  BlocBuilder<LoginCubit, LoginState> _buildPassInput() {
    return BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
      if (state is ToogleSuffixIcon) {
        return TextFieldWidget(
            keyType: TextInputType.name,
            actionType: TextInputAction.done,
            controller: passwordController,
            pIcon: Icons.lock_outlined,
            sIcon: state.visibility
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            suffixOnPress: () =>
                context.read<LoginCubit>().toogleSuffixIcon(!state.visibility),
            obscureText: state.visibility ? false : true,
            labelText: "Password",
            hintText: LocaleKeys.login_tfieldPassHint.locale);
      } else {
        return context.emptySizedHeightBoxLow;
      }
    });
  }

  TextFieldWidget _buildUnameInput() {
    return TextFieldWidget(
        keyType: TextInputType.name,
        actionType: TextInputAction.next,
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
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(decoration: TextDecoration.underline),
          ),
        ));
  }
}
