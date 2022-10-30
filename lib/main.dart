import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/base/wrap_bloc_provider.dart';
import 'core/constants/app/application_constants.dart';
import 'core/constants/app/colors_constants.dart';
import 'core/init/lang/lang_manager.dart';
import 'core/init/observer/observer.dart';
import 'core/init/routes/routes.gr.dart';
import 'core/init/themes/themes.dart';

void main() async {
  //* observe bloc logs
  Bloc.observer = MyBlocObserver();

  //* Update statusbar theme
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: ColorConstants.myTransparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  //*Localization and hive init
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();

  runApp(WrapBlocProvider(
      child: EasyLocalization(
          path: ApplicationConstants.langAssetPath,
          supportedLocales: LangManager.instance.supportLocales,
          startLocale: LangManager.instance.trLocale,
          child: const MyApp())));
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      //themeMode: ThemeMode.light,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      theme: AppTheme.instance.lightTheme,
    );
  }
}
