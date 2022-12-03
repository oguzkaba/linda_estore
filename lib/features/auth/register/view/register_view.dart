import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/extansions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/network/service/network_service.dart';
import '../../../../core/mock/model/user/const_user_model.dart';
import '../../../../core/utils/custom_error_widgets.dart';
import '../../../../core/widgets/button/button.dart';
import '../../../../core/widgets/divider/divider_widget.dart';
import '../../../../core/widgets/text/text.dart';
import '../../../../core/widgets/textfield/textfield_widget.dart';
import '../../../../core/widgets/top/auth_top_widget.dart';
import '../../bloc/auth_bloc.dart';
import '../../login/bloc/cubit/component_cubit.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late final TextEditingController unameController;
  late final TextEditingController emailController;
  late final TextEditingController passwordController;

  @override
  void initState() {
    unameController = TextEditingController();
    emailController = TextEditingController(); //Todo-add regex controller
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    unameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: context.horizontalPaddingMedium,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AuthTopWidget(
                    ctx: context,
                    title: LocaleKeys.register_topTitle.locale,
                    subTitle: LocaleKeys.register_topMessage.locale,
                    image: 'auth'),
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
                BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                  state.whenOrNull(
                    regError: (error) =>
                        CustomErrorWidgets.showError(context, error.toString()),
                  );
                }, builder: (context, state) {
                  return EButtonWidget(
                      loading: state is LoginLoading ||
                          state is LoginSuccess ||
                          state is RegisterLoading ||
                          state is RegisterSuccess,
                      text: LocaleKeys.register_buttonText.locale,
                      onPress: () {
                        //if (_formKey.currentState!.validate()) {
                        context.read<AuthBloc>().add(AuthEvent.register(
                              manager: manager,
                              scaffoldKey: scaffoldKey,
                              //?In the backend, because of the problem of
                              //?adding new users, demo data was used (it can be edited as needed).
                              context: context,
                              registerRequestModel: constUserModel,
                            ));
                      }
                      // }
                      );
                }),
                Padding(padding: context.paddingLow),
                //*signup-or-social text
                RichTextWidget(
                    actionName: LocaleKeys.register_login.locale,
                    text: LocaleKeys.register_haveAccount.locale,
                    action: () => context.router.pushNamed('/login')),
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

  Widget _buildPassInput(String hintText, BuildContext context) {
    final visibility = context.watch<LoginCubit>().state.visibility;
    return TextFieldWidget(
        controller: passwordController,
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
    return TextFieldWidget(
        controller: unameController, pIcon: icon, hintText: hintText);
  }
}
