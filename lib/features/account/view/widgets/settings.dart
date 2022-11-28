import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/enums/language_enum.dart';
import '../../../../core/extansions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
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
          title: Text(LocaleKeys.account_action_appSet_title.locale,
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
        platform: DevicePlatform.iOS,
        lightTheme:
            SettingsThemeData(settingsListBackground: ColorConstants.myWhite),
        sections: [
          _appViewOption(),
          _appSecurity(),
          _appOther(),
          _appPolicies()
        ],
      ),
    ));
  }

  SettingsSection _appViewOption() {
    return SettingsSection(
      title: Text(LocaleKeys.account_action_appSet_viewOption_title.locale,
          style: Theme.of(context).textTheme.bodySmall),
      tiles: <SettingsTile>[
        _tileNavigation(
            icon: Icons.language,
            title: LocaleKeys.account_action_appSet_viewOption_language.locale,
            useTrailing: true,
            valueString: LanguageEnum.toLong(context.locale.languageCode)),
        _tileSwitch(
            title: LocaleKeys.account_action_appSet_viewOption_darkMode.locale,
            icon: Icons.dark_mode),
      ],
    );
  }

  SettingsSection _appSecurity() {
    return SettingsSection(
      title: Text(LocaleKeys.account_action_appSet_security_title.locale,
          style: Theme.of(context).textTheme.bodySmall),
      tiles: <SettingsTile>[
        _tileNavigation(
            title: LocaleKeys.account_action_appSet_security_changePass.locale,
            icon: Icons.lock_reset_rounded),
        _tileSwitch(
            title: LocaleKeys.account_action_appSet_security_fingerprint.locale,
            icon: Icons.fingerprint_rounded),
      ],
    );
  }

  SettingsSection _appOther() {
    return SettingsSection(
      title: Text(LocaleKeys.account_action_appSet_other_title.locale,
          style: Theme.of(context).textTheme.bodySmall),
      tiles: <SettingsTile>[
        _tileNavigation(
            title: LocaleKeys.account_action_appSet_other_versionControl.locale,
            icon: Icons.upload_rounded),
        _tileNavigation(
            title: LocaleKeys.account_action_appSet_other_manageAccount.locale,
            icon: Icons.manage_accounts_rounded),
        _tileNavigation(
            title: LocaleKeys.account_action_appSet_other_about.locale,
            icon: Icons.info_rounded),
      ],
    );
  }

  SettingsSection _appPolicies() {
    return SettingsSection(
      title: Text(LocaleKeys.account_action_appSet_policies_title.locale,
          style: Theme.of(context).textTheme.bodySmall),
      tiles: <SettingsTile>[
        _tileNavigation(
            title: LocaleKeys.account_action_appSet_policies_priAndpol.locale,
            icon: Icons.description),
        _tileNavigation(
            title: LocaleKeys.account_action_appSet_policies_terms.locale,
            icon: Icons.checklist_rounded),
        _tileNavigation(
            title: LocaleKeys.account_action_appSet_policies_help.locale,
            icon: Icons.help),
      ],
    );
  }

  SettingsTile _tileSwitch(
      {Function(bool)? toogle, required String title, required IconData icon}) {
    return SettingsTile.switchTile(
      onToggle: toogle,
      initialValue: false,
      leading:
          IconButtonWidget(icon: icon, iColor: ColorConstants.primaryColor),
      title: Text(title, style: Theme.of(context).textTheme.bodySmall),
    );
  }

  SettingsTile _tileNavigation(
      {Function(BuildContext)? press,
      String? valueString,
      bool? useTrailing,
      required String title,
      required IconData icon}) {
    return SettingsTile.navigation(
      onPressed: press,
      trailing: useTrailing == null || useTrailing == false
          ? null
          : const LanguageDropDownButton(dropIcon: Icon(Icons.arrow_drop_down)),
      leading:
          IconButtonWidget(icon: icon, iColor: ColorConstants.primaryColor),
      value: valueString == null
          ? null
          : Text(valueString,
              style: Theme.of(context)
                  .textTheme
                  .overline
                  ?.copyWith(color: ColorConstants.myMediumGrey)),
      title: Text(title, style: Theme.of(context).textTheme.bodySmall),
    );
  }
}
