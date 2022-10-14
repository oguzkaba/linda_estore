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
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:dio/dio.dart' as _i15;
import 'package:flutter/material.dart' as _i14;

import '../../../app/view/app_view.dart' as _i2;
import '../../../features/account/view/account_view.dart' as _i5;
import '../../../features/auth/forgot/verification/verification_view.dart'
    as _i10;
import '../../../features/auth/forgot/view/forgot_view.dart' as _i8;
import '../../../features/auth/login/view/login_view.dart' as _i6;
import '../../../features/auth/register/view/register_view.dart' as _i7;
import '../../../features/cart/view/cart_view.dart' as _i11;
import '../../../features/checkout/view/checkout_view.dart' as _i12;
import '../../../features/favorite/view/favorite_view.dart' as _i9;
import '../../../features/home/view/home_view.dart' as _i3;
import '../../../features/product/view/product_detail_view.dart' as _i4;
import '../../../features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    AppView.name: (routeData) {
      final args =
          routeData.argsAs<AppViewArgs>(orElse: () => const AppViewArgs());
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.AppView(key: args.key, id: args.id),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    HomeView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomeView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.ProductDetailView(
              key: args.key,
              id: args.id,
              manager: args.manager,
              scaffoldKey: args.scaffoldKey),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    AccountView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.AccountView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.LoginView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.RegisterView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.ForgotView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    FavoriteView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.FavoriteView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    EmailVerificationView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.EmailVerificationView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    CartView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.CartView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    CheckOutView.name: (routeData) {
      return _i13.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.CheckOutView(),
          transitionsBuilder: _i13.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(SplashView.name, path: '/'),
        _i13.RouteConfig(AppView.name, path: '/app'),
        _i13.RouteConfig(HomeView.name, path: '/home'),
        _i13.RouteConfig(ProductDetailView.name, path: '/product-detail'),
        _i13.RouteConfig(AccountView.name, path: '/account'),
        _i13.RouteConfig(LoginView.name, path: '/login'),
        _i13.RouteConfig(RegisterView.name, path: '/register'),
        _i13.RouteConfig(ForgotView.name, path: '/forgot'),
        _i13.RouteConfig(FavoriteView.name, path: '/favorite'),
        _i13.RouteConfig(EmailVerificationView.name, path: '/verification'),
        _i13.RouteConfig(CartView.name, path: '/cart'),
        _i13.RouteConfig(CheckOutView.name, path: '/checkout')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i13.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.AppView]
class AppView extends _i13.PageRouteInfo<AppViewArgs> {
  AppView({_i14.Key? key, int? id})
      : super(AppView.name, path: '/app', args: AppViewArgs(key: key, id: id));

  static const String name = 'AppView';
}

class AppViewArgs {
  const AppViewArgs({this.key, this.id});

  final _i14.Key? key;

  final int? id;

  @override
  String toString() {
    return 'AppViewArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.HomeView]
class HomeView extends _i13.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i4.ProductDetailView]
class ProductDetailView extends _i13.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView(
      {_i14.Key? key,
      required int id,
      required _i15.Dio manager,
      _i14.GlobalKey<_i14.ScaffoldState>? scaffoldKey})
      : super(ProductDetailView.name,
            path: '/product-detail',
            args: ProductDetailViewArgs(
                key: key, id: id, manager: manager, scaffoldKey: scaffoldKey));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs(
      {this.key, required this.id, required this.manager, this.scaffoldKey});

  final _i14.Key? key;

  final int id;

  final _i15.Dio manager;

  final _i14.GlobalKey<_i14.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, id: $id, manager: $manager, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i5.AccountView]
class AccountView extends _i13.PageRouteInfo<void> {
  const AccountView() : super(AccountView.name, path: '/account');

  static const String name = 'AccountView';
}

/// generated route for
/// [_i6.LoginView]
class LoginView extends _i13.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i7.RegisterView]
class RegisterView extends _i13.PageRouteInfo<void> {
  const RegisterView() : super(RegisterView.name, path: '/register');

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i8.ForgotView]
class ForgotView extends _i13.PageRouteInfo<void> {
  const ForgotView() : super(ForgotView.name, path: '/forgot');

  static const String name = 'ForgotView';
}

/// generated route for
/// [_i9.FavoriteView]
class FavoriteView extends _i13.PageRouteInfo<void> {
  const FavoriteView() : super(FavoriteView.name, path: '/favorite');

  static const String name = 'FavoriteView';
}

/// generated route for
/// [_i10.EmailVerificationView]
class EmailVerificationView extends _i13.PageRouteInfo<void> {
  const EmailVerificationView()
      : super(EmailVerificationView.name, path: '/verification');

  static const String name = 'EmailVerificationView';
}

/// generated route for
/// [_i11.CartView]
class CartView extends _i13.PageRouteInfo<void> {
  const CartView() : super(CartView.name, path: '/cart');

  static const String name = 'CartView';
}

/// generated route for
/// [_i12.CheckOutView]
class CheckOutView extends _i13.PageRouteInfo<void> {
  const CheckOutView() : super(CheckOutView.name, path: '/checkout');

  static const String name = 'CheckOutView';
}
