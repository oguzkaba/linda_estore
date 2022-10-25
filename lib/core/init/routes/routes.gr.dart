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
import 'package:auto_route/auto_route.dart' as _i20;
import 'package:dio/dio.dart' as _i22;
import 'package:flutter/material.dart' as _i21;

import '../../../features/account/view/account_view.dart' as _i19;
import '../../../features/account/view/widgets/cards.dart' as _i10;
import '../../../features/account/view/widgets/edit_card.dart' as _i11;
import '../../../features/account/view/widgets/edit_profile.dart' as _i9;
import '../../../features/account/view/widgets/notifications.dart' as _i12;
import '../../../features/account/view/widgets/order_history.dart' as _i13;
import '../../../features/account/view/widgets/shipping_adress.dart' as _i14;
import '../../../features/account/view/widgets/track_order.dart' as _i15;
import '../../../features/auth/forgot/verification/verification_view.dart'
    as _i7;
import '../../../features/auth/forgot/view/forgot_view.dart' as _i6;
import '../../../features/auth/login/view/login_view.dart' as _i4;
import '../../../features/auth/register/view/register_view.dart' as _i5;
import '../../../features/cart/view/cart_view.dart' as _i17;
import '../../../features/cart/view/widgets/checkout.dart' as _i8;
import '../../../features/dashboard/view/dashboard_view.dart' as _i2;
import '../../../features/favorite/view/favorite_view.dart' as _i18;
import '../../../features/home/view/home_view.dart' as _i16;
import '../../../features/product/view/product_detail_view.dart' as _i3;
import '../../../features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i20.RootStackRouter {
  AppRouter([_i21.GlobalKey<_i21.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i20.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Dashboard.name: (routeData) {
      final args =
          routeData.argsAs<DashboardArgs>(orElse: () => const DashboardArgs());
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.Dashboard(key: args.key, id: args.id),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.ProductDetailView(
              key: args.key,
              id: args.id,
              manager: args.manager,
              scaffoldKey: args.scaffoldKey),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.LoginView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.ForgotView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    EmailVerificationView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.EmailVerificationView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Checkout.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.Checkout(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    EditProfile.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.EditProfile(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Cards.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.Cards(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    EditCard.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.EditCard(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Notifications.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.Notifications(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    OrderHistory.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.OrderHistory(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    ShippingAdress.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.ShippingAdress(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    TrackOrder.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.TrackOrder(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    HomeView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i16.HomeView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    CartView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i17.CartView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    FavoriteView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.FavoriteView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    AccountView.name: (routeData) {
      return _i20.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i19.AccountView(),
          transitionsBuilder: _i20.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i20.RouteConfig> get routes => [
        _i20.RouteConfig(SplashView.name, path: '/'),
        _i20.RouteConfig(Dashboard.name, path: '/dashboard', children: [
          _i20.RouteConfig('#redirect',
              path: '',
              parent: Dashboard.name,
              redirectTo: 'home',
              fullMatch: true),
          _i20.RouteConfig(HomeView.name, path: 'home', parent: Dashboard.name),
          _i20.RouteConfig(CartView.name, path: 'cart', parent: Dashboard.name),
          _i20.RouteConfig(FavoriteView.name,
              path: 'favorite', parent: Dashboard.name),
          _i20.RouteConfig(AccountView.name,
              path: 'account', parent: Dashboard.name)
        ]),
        _i20.RouteConfig(ProductDetailView.name, path: '/product-detail'),
        _i20.RouteConfig(LoginView.name, path: '/login'),
        _i20.RouteConfig(RegisterView.name, path: '/register'),
        _i20.RouteConfig(ForgotView.name, path: '/forgot'),
        _i20.RouteConfig(EmailVerificationView.name, path: '/verification'),
        _i20.RouteConfig(Checkout.name, path: '/checkout'),
        _i20.RouteConfig(EditProfile.name, path: '/edit-profile'),
        _i20.RouteConfig(Cards.name, path: '/cards'),
        _i20.RouteConfig(EditCard.name, path: '/cards'),
        _i20.RouteConfig(Notifications.name, path: '/notifications'),
        _i20.RouteConfig(OrderHistory.name, path: '/order-history'),
        _i20.RouteConfig(ShippingAdress.name, path: '/shipping-adress'),
        _i20.RouteConfig(TrackOrder.name, path: '/track-order')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i20.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.Dashboard]
class Dashboard extends _i20.PageRouteInfo<DashboardArgs> {
  Dashboard({_i21.Key? key, int? id, List<_i20.PageRouteInfo>? children})
      : super(Dashboard.name,
            path: '/dashboard',
            args: DashboardArgs(key: key, id: id),
            initialChildren: children);

  static const String name = 'Dashboard';
}

class DashboardArgs {
  const DashboardArgs({this.key, this.id});

  final _i21.Key? key;

  final int? id;

  @override
  String toString() {
    return 'DashboardArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.ProductDetailView]
class ProductDetailView extends _i20.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView(
      {_i21.Key? key,
      required int id,
      required _i22.Dio manager,
      _i21.GlobalKey<_i21.ScaffoldState>? scaffoldKey})
      : super(ProductDetailView.name,
            path: '/product-detail',
            args: ProductDetailViewArgs(
                key: key, id: id, manager: manager, scaffoldKey: scaffoldKey));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs(
      {this.key, required this.id, required this.manager, this.scaffoldKey});

  final _i21.Key? key;

  final int id;

  final _i22.Dio manager;

  final _i21.GlobalKey<_i21.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, id: $id, manager: $manager, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i4.LoginView]
class LoginView extends _i20.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i5.RegisterView]
class RegisterView extends _i20.PageRouteInfo<void> {
  const RegisterView() : super(RegisterView.name, path: '/register');

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i6.ForgotView]
class ForgotView extends _i20.PageRouteInfo<void> {
  const ForgotView() : super(ForgotView.name, path: '/forgot');

  static const String name = 'ForgotView';
}

/// generated route for
/// [_i7.EmailVerificationView]
class EmailVerificationView extends _i20.PageRouteInfo<void> {
  const EmailVerificationView()
      : super(EmailVerificationView.name, path: '/verification');

  static const String name = 'EmailVerificationView';
}

/// generated route for
/// [_i8.Checkout]
class Checkout extends _i20.PageRouteInfo<void> {
  const Checkout() : super(Checkout.name, path: '/checkout');

  static const String name = 'Checkout';
}

/// generated route for
/// [_i9.EditProfile]
class EditProfile extends _i20.PageRouteInfo<void> {
  const EditProfile() : super(EditProfile.name, path: '/edit-profile');

  static const String name = 'EditProfile';
}

/// generated route for
/// [_i10.Cards]
class Cards extends _i20.PageRouteInfo<void> {
  const Cards() : super(Cards.name, path: '/cards');

  static const String name = 'Cards';
}

/// generated route for
/// [_i11.EditCard]
class EditCard extends _i20.PageRouteInfo<void> {
  const EditCard() : super(EditCard.name, path: '/cards');

  static const String name = 'EditCard';
}

/// generated route for
/// [_i12.Notifications]
class Notifications extends _i20.PageRouteInfo<void> {
  const Notifications() : super(Notifications.name, path: '/notifications');

  static const String name = 'Notifications';
}

/// generated route for
/// [_i13.OrderHistory]
class OrderHistory extends _i20.PageRouteInfo<void> {
  const OrderHistory() : super(OrderHistory.name, path: '/order-history');

  static const String name = 'OrderHistory';
}

/// generated route for
/// [_i14.ShippingAdress]
class ShippingAdress extends _i20.PageRouteInfo<void> {
  const ShippingAdress() : super(ShippingAdress.name, path: '/shipping-adress');

  static const String name = 'ShippingAdress';
}

/// generated route for
/// [_i15.TrackOrder]
class TrackOrder extends _i20.PageRouteInfo<void> {
  const TrackOrder() : super(TrackOrder.name, path: '/track-order');

  static const String name = 'TrackOrder';
}

/// generated route for
/// [_i16.HomeView]
class HomeView extends _i20.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: 'home');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i17.CartView]
class CartView extends _i20.PageRouteInfo<void> {
  const CartView() : super(CartView.name, path: 'cart');

  static const String name = 'CartView';
}

/// generated route for
/// [_i18.FavoriteView]
class FavoriteView extends _i20.PageRouteInfo<void> {
  const FavoriteView() : super(FavoriteView.name, path: 'favorite');

  static const String name = 'FavoriteView';
}

/// generated route for
/// [_i19.AccountView]
class AccountView extends _i20.PageRouteInfo<void> {
  const AccountView() : super(AccountView.name, path: 'account');

  static const String name = 'AccountView';
}
