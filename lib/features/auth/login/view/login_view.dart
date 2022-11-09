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

/*
1
johnd 
m38rmF$

2
mor_2314
83r5^_

3
kevinryan
kev02937@

4
donero
ewedon

5
derek
jklg*_56

6
david_r
3478*#54

7
snyder
f238&@*$

8
hopkins
William56$hj

9
kate_h
kfejk@*_

10
jimmie_k
klein*#%*
*/

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
                _buildPassInput(context),
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
                    context.router
                        .push(DashboardRouter(children: const [HomeView()]));
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
                                    scaffoldKey,
                                    LoginRequestModel(
                                      username: unameController.text.trim(),
                                      password: passwordController.text.trim(),
                                    ),
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

  Widget _buildPassInput(BuildContext context) {
    final visibility = context.watch<LoginCubit>().state.visibility;
    return TextFieldWidget(
        keyType: TextInputType.name,
        actionType: TextInputAction.done,
        controller: passwordController,
        pIcon: Icons.lock_outlined,
        sIcon: visibility
            ? Icons.visibility_off_outlined
            : Icons.visibility_outlined,
        suffixOnPress: () =>
            context.read<LoginCubit>().toogleSuffixIcon(!visibility),
        obscureText: visibility ? false : true,
        labelText: "Password",
        hintText: LocaleKeys.login_tfieldPassHint.locale);
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
