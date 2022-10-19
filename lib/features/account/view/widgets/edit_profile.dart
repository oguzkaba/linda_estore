import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/colors_constants.dart';
import 'package:linda_wedding_ecommerce/core/init/routes/routes.gr.dart';

import '../../../../product/widgets/ebutton_widget.dart';
import '../../../../product/widgets/iconbutton_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';
import '../../../auth/login/bloc/cubit/login_cubit.dart';

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
                title: Text("Edit Profile",
                    style: TextStyle(color: ColorConstants.myBlack)),
                leading: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButtonWidget(
                      size: 16,
                      onPress: () => context.router.pop(),
                      icon: Icons.chevron_left_rounded,
                      iColor: ColorConstants.myMediumGrey,
                      tooltip: "Back"),
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
                              "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
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
                          tooltip: "Back"),
                    ),
                  ]),
                  Padding(padding: context.verticalPaddingMedium),
                  _buildInput("Enter Email", Icons.email_outlined),
                  Padding(padding: context.verticalPaddingLow),
                  _buildPassInput("Enter password"),
                  Padding(padding: context.verticalPaddingLow),
                  _buildPassInput("Enter password again"),
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
              child: EButtonWidget(text: "Save", onPress: () => {}),
            )));
  }
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
