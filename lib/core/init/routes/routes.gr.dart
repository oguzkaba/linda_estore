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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../../features/auth/forgot/view/forgot_view.dart' as _i3;
import '../../../features/auth/login/view/login_view.dart' as _i2;
import '../../../features/auth/register/view/register_view.dart' as _i4;
import '../../../features/home/view/home_view.dart' as _i5;
import '../../../features/product/view/product_detail_view.dart' as _i6;
import '../../../features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginView(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotView.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.ForgotView(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterView.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.RegisterView(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    HomeView.name: (routeData) {
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.HomeView(),
          transitionsBuilder: _i7.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i7.CustomPage<dynamic>(
          routeData: routeData,
          child: _i6.ProductDetailView(key: args.key, id: args.id),
          transitionsBuilder: _i7.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashView.name, path: '/'),
        _i7.RouteConfig(LoginView.name, path: '/login-view'),
        _i7.RouteConfig(ForgotView.name, path: '/forgot-view'),
        _i7.RouteConfig(RegisterView.name, path: '/register-view'),
        _i7.RouteConfig(HomeView.name, path: '/home-view'),
        _i7.RouteConfig(ProductDetailView.name, path: '/product-detail-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i7.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i7.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login-view');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i3.ForgotView]
class ForgotView extends _i7.PageRouteInfo<void> {
  const ForgotView() : super(ForgotView.name, path: '/forgot-view');

  static const String name = 'ForgotView';
}

/// generated route for
/// [_i4.RegisterView]
class RegisterView extends _i7.PageRouteInfo<void> {
  const RegisterView() : super(RegisterView.name, path: '/register-view');

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i5.HomeView]
class HomeView extends _i7.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home-view');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i6.ProductDetailView]
class ProductDetailView extends _i7.PageRouteInfo<ProductDetailViewArgs> {
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
