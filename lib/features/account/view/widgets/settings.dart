import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/enums/language_enum.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/init/themes/cubit/theme_cubit.dart';
import '../../../../core/widgets/button/iconbutton_widget.dart';
import '../../../../core/widgets/dropdown/language_ddbutton_widget.dart';

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
            title: Text(LocaleKeys.account_action_appSet_title.locale),
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
        body: SettingsList(
          platform: DevicePlatform.android,
          sections: [
            _appViewOption(context),
            _appSecurity(),
            _appOther(),
            _appPolicies()
          ],
        ),
      ),
    );
  }

  SettingsSection _appViewOption(BuildContext context) {
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
            value: context.watch<ThemeCubit>().state.isDark ? true : false,
            toogle: (value) =>
                context.read<ThemeCubit>().changeTheme(context, value),
            title: context.watch<ThemeCubit>().state.isDark
                ? LocaleKeys.account_action_appSet_viewOption_lightMode.locale
                : LocaleKeys.account_action_appSet_viewOption_darkMode.locale,
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
            value: false,
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
      {Function(bool)? toogle,
      required String title,
      required IconData icon,
      required bool value}) {
    return SettingsTile.switchTile(
      onToggle: toogle,
      initialValue: value,
      leading: IconButtonWidget(
          icon: icon,
          iColor: ColorConstants.primaryColor,
          size: 14,
          circleRadius: 16),
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
      leading: IconButtonWidget(
          icon: icon,
          iColor: ColorConstants.primaryColor,
          size: 14,
          circleRadius: 16),
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
