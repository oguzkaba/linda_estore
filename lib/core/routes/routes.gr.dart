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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../features/auth/login/view/login_view.dart' as _i2;
import '../../features/onboard/view/onboard_view.dart' as _i3;
import '../../features/product/view/product_detail_view.dart' as _i4;
import '../../features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LoginView(),
          transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    OnboardView.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.OnboardView(),
          transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.ProductDetailView(key: args.key, id: args.id),
          transitionsBuilder: _i5.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashView.name, path: '/'),
        _i5.RouteConfig(LoginView.name, path: '/login-view'),
        _i5.RouteConfig(OnboardView.name, path: '/onboard-view'),
        _i5.RouteConfig(ProductDetailView.name, path: '/product-detail-view')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i5.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.LoginView]
class LoginView extends _i5.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login-view');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i3.OnboardView]
class OnboardView extends _i5.PageRouteInfo<void> {
  const OnboardView() : super(OnboardView.name, path: '/onboard-view');

  static const String name = 'OnboardView';
}

/// generated route for
/// [_i4.ProductDetailView]
class ProductDetailView extends _i5.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView({_i6.Key? key, required int id})
      : super(ProductDetailView.name,
            path: '/product-detail-view',
            args: ProductDetailViewArgs(key: key, id: id));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs({this.key, required this.id});

  final _i6.Key? key;

  final int id;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, id: $id}';
  }
}
