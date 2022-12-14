import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/widgets/button/ebutton_widget.dart';
import '../../../../core/widgets/button/iconbutton_widget.dart';
import '../../../../core/widgets/textfield/textfield_widget.dart';
import '../../../auth/login/bloc/cubit/component_cubit.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: Text(LocaleKeys.account_action_editProfile_title.locale,
                    style: TextStyle(color: ColorConstants.myBlack)),
                leading: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButtonWidget(
                      size: 16,
                      onPress: () => context.router.pop(),
                      icon: Icons.chevron_left_rounded,
                      iColor: ColorConstants.myMediumGrey,
                      tooltip: 'Back'),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                centerTitle: true),
            body: SingleChildScrollView(
              padding: context.paddingMedium,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    CircleAvatar(
                        radius: 70,
                        backgroundColor: ColorConstants.secondaryColor,
                        child: CircleAvatar(
                            backgroundColor: ColorConstants.secondaryColor,
                            backgroundImage: const NetworkImage(
                              'https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250',
                            ),
                            radius: 65)),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: IconButtonWidget(
                          onPress: () => {},
                          icon: Icons.camera_alt_rounded,
                          iColor: ColorConstants.myWhite,
                          bColor: ColorConstants.primaryColor,
                          tooltip: 'Back'),
                    ),
                  ]),
                  Padding(padding: context.verticalPaddingMedium),
                  _buildInput(
                      LocaleKeys
                          .account_action_editProfile_tfieldEmailHint.locale,
                      Icons.email_outlined),
                  Padding(padding: context.verticalPaddingLow),
                  _buildPassInput(
                      LocaleKeys
                          .account_action_editProfile_tfieldPassHint.locale,
                      context),
                  Padding(padding: context.verticalPaddingLow),
                  _buildPassInput(
                      LocaleKeys
                          .account_action_editProfile_tfieldPass2Hint.locale,
                      context),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: ColorConstants.myWhite,
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.myLightGrey,
                    offset: const Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              height: 60,
              child: EButtonWidget(
                  text: LocaleKeys.account_action_editProfile_buttonText.locale,
                  onPress: () => {}),
            )));
  }
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
  return TextFieldWidget(
      pIcon: icon,
      labelText: LocaleKeys.account_action_editProfile_tfieldEmailHint.locale,
      hintText: hintText);
}
