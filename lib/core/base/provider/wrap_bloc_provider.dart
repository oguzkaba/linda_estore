import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linda_wedding_ecommerce/features/account/bloc/account_bloc.dart';
import 'package:linda_wedding_ecommerce/features/auth/bloc/auth_bloc.dart';
import 'package:linda_wedding_ecommerce/features/favorite/bloc/favorite_bloc.dart';
import 'package:linda_wedding_ecommerce/product/cubit/language_cubit.dart';

import '../../../features/auth/login/bloc/cubit/login_cubit.dart';
import '../../../features/cart/bloc/cart_bloc.dart';
import '../../../features/product/blocs/categories/categories_bloc.dart';
import '../../../features/product/blocs/product/product_bloc.dart';
import '../../../features/product/blocs/products/products_bloc.dart';

class WrapBlocProvider extends StatelessWidget {
  final Widget child;
  const WrapBlocProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProductsBloc>(
          create: (context) => ProductsBloc(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(),
        ),
        BlocProvider<AccountBloc>(
          create: (context) => AccountBloc(),
        ),
        BlocProvider(
          create: (context) => CategoriesBloc(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => ProductBloc(),
        ),
        BlocProvider(
          create: (context) => CartBloc(),
        ),
        BlocProvider(
          create: (context) => FavoriteBloc(),
        ),
        BlocProvider(
          create: (context) => LanguageCubit(),
        ),
      ],
      child: child,
    );
  }
}
