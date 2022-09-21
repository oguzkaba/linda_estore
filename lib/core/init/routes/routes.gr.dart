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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i7;

import '../../../features/auth/login/view/login_view.dart' as _i2;
import '../../../features/auth/register/view/register_view.dart' as _i3;
import '../../../features/home/view/home_view.dart' as _i4;
import '../../../features/product/view/product_detail_view.dart' as _i5;
import '../../../features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i6.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginView(),
          transitionsBuilder: _i6.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterView.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.RegisterView(),
          transitionsBuilder: _i6.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    HomeView.name: (routeData) {
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.HomeView(),
          transitionsBuilder: _i6.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i6.CustomPage<dynamic>(
          routeData: routeData,
          child: _i5.ProductDetailView(key: args.key, id: args.id),
          transitionsBuilder: _i6.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashView.name, path: '/'),
        _i6.RouteConfig(LoginView.name, path: '/login-view'),
        _i6.RouteConfig(RegisterView.name, path: '/register-view'),
        _i6.RouteConfig(HomeView.name, path: '/home-view'),
        _i6.RouteConfig(ProductDetailView.name, path: '/product-detail-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i6.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i6.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login-view');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i3.RegisterView]
class RegisterView extends _i6.PageRouteInfo<void> {
  const RegisterView() : super(RegisterView.name, path: '/register-view');

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i4.HomeView]
class HomeView extends _i6.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home-view');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i5.ProductDetailView]
class ProductDetailView extends _i6.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView({_i8.Key? key, required int id})
      : super(ProductDetailView.name,
            path: '/product-detail-view',
            args: ProductDetailViewArgs(key: key, id: id));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs({this.key, required this.id});

  final _i8.Key? key;

  final int id;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, id: $id}';
  }
}
