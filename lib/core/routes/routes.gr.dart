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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:linda_wedding_ecommerce/features/auth/login/view/login_view.dart'
    as _i1;
import 'package:linda_wedding_ecommerce/features/onboard/view/onboard_view.dart'
    as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    LoginView.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.LoginView());
    },
    OnboardView.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.OnboardView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(LoginView.name, path: '/'),
        _i3.RouteConfig(OnboardView.name, path: '/onboard-view')
      ];
}

/// generated route for
/// [_i1.LoginView]
class LoginView extends _i3.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i2.OnboardView]
class OnboardView extends _i3.PageRouteInfo<void> {
  const OnboardView() : super(OnboardView.name, path: '/onboard-view');

  static const String name = 'OnboardView';
}
