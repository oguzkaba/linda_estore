import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/extansions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../product/cubit/language_cubit.dart';
import '../../../../product/widgets/iconbutton_widget.dart';
import '../../../../product/widgets/language_ddbutton_widget.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: Text(LocaleKeys.account_action_trackOrder_title.locale,
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
      body: SettingsList(
        sections: [
          _section1(context),
          _section1(context),
          _section1(context),
        ],
      ),
    ));
  }

  SettingsSection _section1(BuildContext context) {
    return SettingsSection(
      margin: EdgeInsetsDirectional.all(context.height * .02),
      tiles: <SettingsTile>[
        SettingsTile.navigation(
          leading: const Icon(Icons.language),
          value: Text("*use dropdown button to change language",
              style: Theme.of(context)
                  .textTheme
                  .overline
                  ?.copyWith(color: ColorConstants.myMediumGrey)),
          title: Row(
            children: [
              Text("Current Language: ",
                  style: Theme.of(context).textTheme.bodySmall),
              LanguageDropDownButton(
                alignment: Alignment.center,
                context: context,
              ),
            ],
          ),
        ),
        SettingsTile.switchTile(
          onToggle: (value) {},
          initialValue: false,
          leading: const Icon(Icons.format_paint),
          title: Text("Current Theme: Light",
              style: Theme.of(context).textTheme.bodySmall),
          description: Text("*use switch to change theme",
              style: Theme.of(context)
                  .textTheme
                  .overline
                  ?.copyWith(color: ColorConstants.myMediumGrey)),
        ),
      ],
    );
  }
}
