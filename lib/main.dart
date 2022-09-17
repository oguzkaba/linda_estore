import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/init/observer/observer.dart';
import 'core/themes/themes.dart';
import 'features/product/blocs/categories/categories_bloc.dart';

import 'core/routes/routes.gr.dart';
import 'features/product/blocs/products/products_bloc.dart';

void main() async {
  //* observe bloc logs
  Bloc.observer = MyBlocObserver();

  //* Update statusbar theme
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ProductsBloc>(
        create: (context) => ProductsBloc(),
      ),
      BlocProvider(
        create: (context) => CategoriesBloc(),
      ),
    ],
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
      theme: AppTheme.lightTheme,
    );
  }
}
