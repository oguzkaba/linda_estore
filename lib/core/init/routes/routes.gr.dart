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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:dio/dio.dart' as _i10;
import 'package:flutter/material.dart' as _i9;

import '../../../features/auth/forgot/verification/verification_view.dart'
    as _i4;
import '../../../features/auth/forgot/view/forgot_view.dart' as _i3;
import '../../../features/auth/login/view/login_view.dart' as _i2;
import '../../../features/auth/register/view/register_view.dart' as _i5;
import '../../../features/home/view/home_view.dart' as _i6;
import '../../../features/product/view/product_detail_view.dart' as _i7;
import '../../../features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i8.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginView(),
          transitionsBuilder: _i8.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotView.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ForgotView(),
          transitionsBuilder: _i8.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    EmailVerificationView.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.EmailVerificationView(),
          transitionsBuilder: _i8.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterView.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterView(),
          transitionsBuilder: _i8.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    HomeView.name: (routeData) {
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.HomeView(),
          transitionsBuilder: _i8.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i8.CustomPage<dynamic>(
          routeData: routeData,
          child: _i7.ProductDetailView(
              key: args.key,
              id: args.id,
              manager: args.manager,
              scaffoldKey: args.scaffoldKey),
          transitionsBuilder: _i8.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashView.name, path: '/'),
        _i8.RouteConfig(LoginView.name, path: '/login-view'),
        _i8.RouteConfig(ForgotView.name, path: '/forgot-view'),
        _i8.RouteConfig(EmailVerificationView.name,
            path: '/email-verification-view'),
        _i8.RouteConfig(RegisterView.name, path: '/register-view'),
        _i8.RouteConfig(HomeView.name, path: '/home-view'),
        _i8.RouteConfig(ProductDetailView.name, path: '/product-detail-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i8.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i8.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login-view');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i3.ForgotView]
class ForgotView extends _i8.PageRouteInfo<void> {
  const ForgotView() : super(ForgotView.name, path: '/forgot-view');

  static const String name = 'ForgotView';
}

/// generated route for
/// [_i4.EmailVerificationView]
class EmailVerificationView extends _i8.PageRouteInfo<void> {
  const EmailVerificationView()
      : super(EmailVerificationView.name, path: '/email-verification-view');

  static const String name = 'EmailVerificationView';
}

/// generated route for
/// [_i5.RegisterView]
class RegisterView extends _i8.PageRouteInfo<void> {
  const RegisterView() : super(RegisterView.name, path: '/register-view');

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i6.HomeView]
class HomeView extends _i8.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home-view');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i7.ProductDetailView]
class ProductDetailView extends _i8.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView(
      {_i9.Key? key,
      required int id,
      required _i10.Dio manager,
      _i9.GlobalKey<_i9.ScaffoldState>? scaffoldKey})
      : super(ProductDetailView.name,
            path: '/product-detail-view',
            args: ProductDetailViewArgs(
                key: key, id: id, manager: manager, scaffoldKey: scaffoldKey));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs(
      {this.key, required this.id, required this.manager, this.scaffoldKey});

  final _i9.Key? key;

  final int id;

  final _i10.Dio manager;

  final _i9.GlobalKey<_i9.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, id: $id, manager: $manager, scaffoldKey: $scaffoldKey}';
  }
}
