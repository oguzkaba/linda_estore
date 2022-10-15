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
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:dio/dio.dart' as _i21;
import 'package:flutter/material.dart' as _i20;

import '../../../app/view/app_view.dart' as _i2;
import '../../../features/account/view/account_view.dart' as _i5;
import '../../../features/account/view/widgets/cards.dart' as _i14;
import '../../../features/account/view/widgets/edit_profile.dart' as _i13;
import '../../../features/account/view/widgets/notifications.dart' as _i15;
import '../../../features/account/view/widgets/order_history.dart' as _i16;
import '../../../features/account/view/widgets/shipping_adress.dart' as _i17;
import '../../../features/account/view/widgets/track_order.dart' as _i18;
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

class AppRouter extends _i19.RootStackRouter {
  AppRouter([_i20.GlobalKey<_i20.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    AppView.name: (routeData) {
      final args =
          routeData.argsAs<AppViewArgs>(orElse: () => const AppViewArgs());
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.AppView(key: args.key, id: args.id),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    HomeView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.HomeView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: _i4.ProductDetailView(
              key: args.key,
              id: args.id,
              manager: args.manager,
              scaffoldKey: args.scaffoldKey),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    AccountView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.AccountView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.LoginView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.RegisterView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.ForgotView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    FavoriteView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.FavoriteView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    EmailVerificationView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.EmailVerificationView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    CartView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.CartView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    CheckOutView.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.CheckOutView(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    EditProfile.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.EditProfile(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    Cards.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.Cards(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    Notifications.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.Notifications(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    OrderHistory.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i16.OrderHistory(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    ShippingAdress.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i17.ShippingAdress(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    TrackOrder.name: (routeData) {
      return _i19.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.TrackOrder(),
          transitionsBuilder: _i19.TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i19.RouteConfig> get routes => [
        _i19.RouteConfig(SplashView.name, path: '/'),
        _i19.RouteConfig(AppView.name, path: '/app'),
        _i19.RouteConfig(HomeView.name, path: '/home'),
        _i19.RouteConfig(ProductDetailView.name, path: '/product-detail'),
        _i19.RouteConfig(AccountView.name, path: '/account'),
        _i19.RouteConfig(LoginView.name, path: '/login'),
        _i19.RouteConfig(RegisterView.name, path: '/register'),
        _i19.RouteConfig(ForgotView.name, path: '/forgot'),
        _i19.RouteConfig(FavoriteView.name, path: '/favorite'),
        _i19.RouteConfig(EmailVerificationView.name, path: '/verification'),
        _i19.RouteConfig(CartView.name, path: '/cart'),
        _i19.RouteConfig(CheckOutView.name, path: '/checkout'),
        _i19.RouteConfig(EditProfile.name, path: '/edit-profile'),
        _i19.RouteConfig(Cards.name, path: '/cards'),
        _i19.RouteConfig(Notifications.name, path: '/notifications'),
        _i19.RouteConfig(OrderHistory.name, path: '/order-history'),
        _i19.RouteConfig(ShippingAdress.name, path: '/shipping-adress'),
        _i19.RouteConfig(TrackOrder.name, path: '/track-order')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i19.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.AppView]
class AppView extends _i19.PageRouteInfo<AppViewArgs> {
  AppView({_i20.Key? key, int? id})
      : super(AppView.name, path: '/app', args: AppViewArgs(key: key, id: id));

  static const String name = 'AppView';
}

class AppViewArgs {
  const AppViewArgs({this.key, this.id});

  final _i20.Key? key;

  final int? id;

  @override
  String toString() {
    return 'AppViewArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.HomeView]
class HomeView extends _i19.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: '/home');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i4.ProductDetailView]
class ProductDetailView extends _i19.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView(
      {_i20.Key? key,
      required int id,
      required _i21.Dio manager,
      _i20.GlobalKey<_i20.ScaffoldState>? scaffoldKey})
      : super(ProductDetailView.name,
            path: '/product-detail',
            args: ProductDetailViewArgs(
                key: key, id: id, manager: manager, scaffoldKey: scaffoldKey));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs(
      {this.key, required this.id, required this.manager, this.scaffoldKey});

  final _i20.Key? key;

  final int id;

  final _i21.Dio manager;

  final _i20.GlobalKey<_i20.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, id: $id, manager: $manager, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i5.AccountView]
class AccountView extends _i19.PageRouteInfo<void> {
  const AccountView() : super(AccountView.name, path: '/account');

  static const String name = 'AccountView';
}

/// generated route for
/// [_i6.LoginView]
class LoginView extends _i19.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i7.RegisterView]
class RegisterView extends _i19.PageRouteInfo<void> {
  const RegisterView() : super(RegisterView.name, path: '/register');

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i8.ForgotView]
class ForgotView extends _i19.PageRouteInfo<void> {
  const ForgotView() : super(ForgotView.name, path: '/forgot');

  static const String name = 'ForgotView';
}

/// generated route for
/// [_i9.FavoriteView]
class FavoriteView extends _i19.PageRouteInfo<void> {
  const FavoriteView() : super(FavoriteView.name, path: '/favorite');

  static const String name = 'FavoriteView';
}

/// generated route for
/// [_i10.EmailVerificationView]
class EmailVerificationView extends _i19.PageRouteInfo<void> {
  const EmailVerificationView()
      : super(EmailVerificationView.name, path: '/verification');

  static const String name = 'EmailVerificationView';
}

/// generated route for
/// [_i11.CartView]
class CartView extends _i19.PageRouteInfo<void> {
  const CartView() : super(CartView.name, path: '/cart');

  static const String name = 'CartView';
}

/// generated route for
/// [_i12.CheckOutView]
class CheckOutView extends _i19.PageRouteInfo<void> {
  const CheckOutView() : super(CheckOutView.name, path: '/checkout');

  static const String name = 'CheckOutView';
}

/// generated route for
/// [_i13.EditProfile]
class EditProfile extends _i19.PageRouteInfo<void> {
  const EditProfile() : super(EditProfile.name, path: '/edit-profile');

  static const String name = 'EditProfile';
}

/// generated route for
/// [_i14.Cards]
class Cards extends _i19.PageRouteInfo<void> {
  const Cards() : super(Cards.name, path: '/cards');

  static const String name = 'Cards';
}

/// generated route for
/// [_i15.Notifications]
class Notifications extends _i19.PageRouteInfo<void> {
  const Notifications() : super(Notifications.name, path: '/notifications');

  static const String name = 'Notifications';
}

/// generated route for
/// [_i16.OrderHistory]
class OrderHistory extends _i19.PageRouteInfo<void> {
  const OrderHistory() : super(OrderHistory.name, path: '/order-history');

  static const String name = 'OrderHistory';
}

/// generated route for
/// [_i17.ShippingAdress]
class ShippingAdress extends _i19.PageRouteInfo<void> {
  const ShippingAdress() : super(ShippingAdress.name, path: '/shipping-adress');

  static const String name = 'ShippingAdress';
}

/// generated route for
/// [_i18.TrackOrder]
class TrackOrder extends _i19.PageRouteInfo<void> {
  const TrackOrder() : super(TrackOrder.name, path: '/track-order');

  static const String name = 'TrackOrder';
}
