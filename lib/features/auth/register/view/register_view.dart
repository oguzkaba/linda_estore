import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/features/auth/register/model/register_request_model.dart';
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
import '../../login/bloc/cubit/login_cubit.dart';

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
  //?In the backend, because of the problem of adding new users,
  //? demo data was used (it can be edited as needed).
  var registerRequestModel = RegisterRequestModel(
      email: 'John@gmail.com',
      username: 'johnd',
      password: 'm38rmF\$',
      name: Name(firstname: 'John', lastname: 'Doe'),
      address: Address(
          city: 'kilcoole',
          street: '7835 new road',
          number: 3,
          zipcode: '12926-3874',
          geolocation: Geolocation(lat: '-37.3159', long: '81.1496')),
      phone: '1-570-236-7033');

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
                BlocConsumer<AuthBloc, AuthState>(listener: (context, state) {
                  if (state is RegisterError) {
                    CustomErrorWidgets.showError(
                        context, state.error.toString());
                  }
                }, builder: (context, state) {
                  if (state is LoginSuccess) {
                    context.router.push(const LoginView());
                  }
                  return EButtonWidget(
                      text: state is RegisterLoading
                          ? null
                          : LocaleKeys.register_buttonText.locale,
                      onPress: state is RegisterLoading
                          ? null
                          : () {
                              //if (_formKey.currentState!.validate()) {
                              context.read<AuthBloc>().add(AuthRegister(
                                    manager,
                                    scaffoldKey,
                                    //?In the backend, because of the problem of
                                    //?adding new users, demo data was used (it can be edited as needed).
                                    registerRequestModel,
                                    context,
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
                    action: () => context.router.pushNamed("/login")),
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
