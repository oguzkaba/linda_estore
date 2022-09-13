import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/core/themes/themes.dart';
import 'package:linda_wedding_ecommerce/features/onboard/bloc/products_bloc.dart';

import 'core/routes/routes.gr.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ProductsBloc(),
    child: const MyApp(),
  ));
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
        themeMode: ThemeMode.light,
        theme: AppTheme.lightTheme);
  }
}
