// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:dio/dio.dart' as _i14;
import 'package:flutter/material.dart' as _i13;

import '../../../app/view/app_view.dart' as _i9;
import '../../../features/account/view/account_view.dart' as _i4;
import '../../../features/auth/forgot/verification/verification_view.dart'
    as _i6;
import '../../../features/auth/forgot/view/forgot_view.dart' as _i5;
import '../../../features/auth/login/view/login_view.dart' as _i2;
import '../../../features/auth/register/view/register_view.dart' as _i7;
import '../../../features/cart/view/cart_view.dart' as _i10;
import '../../../features/favorite/view/favorite_view.dart' as _i3;
import '../../../features/home/view/home_view.dart' as _i8;
import '../../../features/product/view/product_detail_view.dart' as _i11;
import '../../../features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    FavoriteView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.FavoriteView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    AccountView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.AccountView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.ForgotView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    EmailVerificationView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.EmailVerificationView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.RegisterView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    HomeView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.HomeView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    AppView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.AppView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    CartView.name: (routeData) {
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.CartView(),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i12.CustomPage<dynamic>(
          routeData: routeData,
          child: _i11.ProductDetailView(
              key: args.key,
              id: args.id,
              manager: args.manager,
              scaffoldKey: args.scaffoldKey),
          transitionsBuilder: _i12.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(SplashView.name, path: '/'),
        _i12.RouteConfig(LoginView.name, path: '/login'),
        _i12.RouteConfig(FavoriteView.name, path: '/favorite'),
        _i12.RouteConfig(AccountView.name, path: '/account'),
        _i12.RouteConfig(ForgotView.name, path: '/forgot'),
        _i12.RouteConfig(EmailVerificationView.name, path: '/verification'),
        _i12.RouteConfig(RegisterView.name, path: '/register'),
        _i12.RouteConfig(HomeView.name, path: '/home'),
        _i12.RouteConfig(AppView.name, path: '/app'),
        _i12.RouteConfig(CartView.name, path: '/cart'),
        _i12.RouteConfig(ProductDetailView.name, path: '/product-detail')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i12.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i12.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i3.FavoriteView]
class FavoriteView extends _i12.PageRouteInfo<void> {
  const FavoriteView() : super(FavoriteView.name, path: '/favorite');

  static const String name = 'FavoriteView';
}

/// generated route for
/// [_i4.AccountView]
class AccountView extends _i12.PageRouteInfo<void> {
  const AccountView() : super(AccountView.name, path: '/account');

  static const String name = 'AccountView';
}

/// generated route for
/// [_i5.ForgotView]
class ForgotView extends _i12.PageRouteInfo<void> {
  const ForgotView() : super(ForgotView.name, path: '/forgot');

  static const String name = 'ForgotView';
}

/// generated route for
/// [_i6.EmailVerificationView]
class EmailVerificationView extends _i12.PageRouteInfo<void> {
  const EmailVerificationView()
      : super(EmailVerificationView.name, path: '/verification');

  static const String name = 'EmailVerificationView';
}

/// generated route for
/// [_i7.RegisterView]
class RegisterView extends _i12.PageRouteInfo<void> {
  const RegisterView() : super(RegisterView.name, path: '/register');

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i8.HomeView]
class HomeView extends _i12.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i9.AppView]
class AppView extends _i12.PageRouteInfo<void> {
  const AppView() : super(AppView.name, path: '/app');

  static const String name = 'AppView';
}

/// generated route for
/// [_i10.CartView]
class CartView extends _i12.PageRouteInfo<void> {
  const CartView() : super(CartView.name, path: '/cart');

  static const String name = 'CartView';
}

/// generated route for
/// [_i11.ProductDetailView]
class ProductDetailView extends _i12.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView(
      {_i13.Key? key,
      required int id,
      required _i14.Dio manager,
      _i13.GlobalKey<_i13.ScaffoldState>? scaffoldKey})
      : super(ProductDetailView.name,
            path: '/product-detail',
            args: ProductDetailViewArgs(
                key: key, id: id, manager: manager, scaffoldKey: scaffoldKey));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs(
      {this.key, required this.id, required this.manager, this.scaffoldKey});

  final _i13.Key? key;

  final int id;

  final _i14.Dio manager;

  final _i13.GlobalKey<_i13.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, id: $id, manager: $manager, scaffoldKey: $scaffoldKey}';
  }
}
