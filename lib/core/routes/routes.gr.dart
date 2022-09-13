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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:linda_wedding_ecommerce/features/auth/login/view/login_view.dart'
    as _i1;
import 'package:linda_wedding_ecommerce/features/onboard/view/onboard_view.dart'
    as _i2;
import 'package:linda_wedding_ecommerce/features/product/view/product_detail_view.dart'
    as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginView.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.LoginView());
    },
    OnboardView.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.OnboardView());
    },
    ProductDetailView.name: (routeData) {
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.ProductDetailView());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(LoginView.name, path: '/'),
        _i4.RouteConfig(OnboardView.name, path: '/onboard-view'),
        _i4.RouteConfig(ProductDetailView.name, path: '/product-detail-view')
      ];
}

/// generated route for
/// [_i1.LoginView]
class LoginView extends _i4.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i2.OnboardView]
class OnboardView extends _i4.PageRouteInfo<void> {
  const OnboardView() : super(OnboardView.name, path: '/onboard-view');

  static const String name = 'OnboardView';
}

/// generated route for
/// [_i3.ProductDetailView]
class ProductDetailView extends _i4.PageRouteInfo<void> {
  const ProductDetailView()
      : super(ProductDetailView.name, path: '/product-detail-view');

  static const String name = 'ProductDetailView';
}
