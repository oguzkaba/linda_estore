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
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:dio/dio.dart' as _i23;
import 'package:flutter/material.dart' as _i22;

import '../../../features/account/view/account_view.dart' as _i20;
import '../../../features/account/view/widgets/cards.dart' as _i13;
import '../../../features/account/view/widgets/edit_card.dart' as _i14;
import '../../../features/account/view/widgets/edit_profile.dart' as _i9;
import '../../../features/account/view/widgets/notifications.dart' as _i15;
import '../../../features/account/view/widgets/order_history.dart' as _i11;
import '../../../features/account/view/widgets/settings.dart' as _i16;
import '../../../features/account/view/widgets/shipping_adress.dart' as _i10;
import '../../../features/account/view/widgets/track_order.dart' as _i12;
import '../../../features/auth/forgot/verification/verification_view.dart'
    as _i7;
import '../../../features/auth/forgot/view/forgot_view.dart' as _i6;
import '../../../features/auth/login/view/login_view.dart' as _i4;
import '../../../features/auth/register/view/register_view.dart' as _i5;
import '../../../features/cart/view/cart_view.dart' as _i18;
import '../../../features/cart/view/widgets/checkout.dart' as _i8;
import '../../../features/dashboard/view/dashboard_view.dart' as _i2;
import '../../../features/favorite/view/favorite_view.dart' as _i19;
import '../../../features/home/view/home_view.dart' as _i17;
import '../../../features/product/view/product_detail_view.dart' as _i3;
import '../../../features/splash/view/splash_view.dart' as _i1;

class AppRouter extends _i21.RootStackRouter {
  AppRouter([_i22.GlobalKey<_i22.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    SplashView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.SplashView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Dashboard.name: (routeData) {
      final args =
          routeData.argsAs<DashboardArgs>(orElse: () => const DashboardArgs());
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: _i2.Dashboard(key: args.key, id: args.id),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    ProductDetailView.name: (routeData) {
      final args = routeData.argsAs<ProductDetailViewArgs>();
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: _i3.ProductDetailView(
              key: args.key,
              id: args.id,
              manager: args.manager,
              scaffoldKey: args.scaffoldKey),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    LoginView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.LoginView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    RegisterView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    ForgotView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i6.ForgotView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    EmailVerificationView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.EmailVerificationView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Checkout.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.Checkout(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    EditProfile.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i9.EditProfile(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    ShippingAdress.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i10.ShippingAdress(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    OrderHistory.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i11.OrderHistory(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    TrackOrder.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i12.TrackOrder(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Cards.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i13.Cards(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    EditCard.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i14.EditCard(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Notifications.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i15.Notifications(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    Settings.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i16.Settings(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    HomeView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i17.HomeView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    CartView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i18.CartView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    FavoriteView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i19.FavoriteView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    },
    AccountView.name: (routeData) {
      return _i21.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i20.AccountView(),
          transitionsBuilder: _i21.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 300,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i21.RouteConfig> get routes => [
        _i21.RouteConfig(SplashView.name, path: '/'),
        _i21.RouteConfig(Dashboard.name, path: '/dashboard', children: [
          _i21.RouteConfig('#redirect',
              path: '',
              parent: Dashboard.name,
              redirectTo: 'home',
              fullMatch: true),
          _i21.RouteConfig(HomeView.name, path: 'home', parent: Dashboard.name),
          _i21.RouteConfig(CartView.name, path: 'cart', parent: Dashboard.name),
          _i21.RouteConfig(FavoriteView.name,
              path: 'favorite', parent: Dashboard.name),
          _i21.RouteConfig(AccountView.name,
              path: 'account', parent: Dashboard.name),
          _i21.RouteConfig('*#redirect',
              path: '*',
              parent: Dashboard.name,
              redirectTo: '',
              fullMatch: true)
        ]),
        _i21.RouteConfig(ProductDetailView.name, path: '/product-detail'),
        _i21.RouteConfig(LoginView.name, path: '/login'),
        _i21.RouteConfig(RegisterView.name, path: '/register'),
        _i21.RouteConfig(ForgotView.name, path: '/forgot'),
        _i21.RouteConfig(EmailVerificationView.name, path: '/verification'),
        _i21.RouteConfig(Checkout.name, path: '/checkout'),
        _i21.RouteConfig(EditProfile.name, path: 'edit-profile'),
        _i21.RouteConfig(ShippingAdress.name, path: '/shipping-adress'),
        _i21.RouteConfig(OrderHistory.name, path: '/order-history'),
        _i21.RouteConfig(TrackOrder.name, path: '/track-order'),
        _i21.RouteConfig(Cards.name, path: '/cards'),
        _i21.RouteConfig(EditCard.name, path: '/edit-cards'),
        _i21.RouteConfig(Notifications.name, path: '/notifications'),
        _i21.RouteConfig(Settings.name, path: '/app-settings')
      ];
}

/// generated route for
/// [_i1.SplashView]
class SplashView extends _i21.PageRouteInfo<void> {
  const SplashView() : super(SplashView.name, path: '/');

  static const String name = 'SplashView';
}

/// generated route for
/// [_i2.Dashboard]
class Dashboard extends _i21.PageRouteInfo<DashboardArgs> {
  Dashboard({_i22.Key? key, int? id, List<_i21.PageRouteInfo>? children})
      : super(Dashboard.name,
            path: '/dashboard',
            args: DashboardArgs(key: key, id: id),
            initialChildren: children);

  static const String name = 'Dashboard';
}

class DashboardArgs {
  const DashboardArgs({this.key, this.id});

  final _i22.Key? key;

  final int? id;

  @override
  String toString() {
    return 'DashboardArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.ProductDetailView]
class ProductDetailView extends _i21.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView(
      {_i22.Key? key,
      required int id,
      required _i23.Dio manager,
      _i22.GlobalKey<_i22.ScaffoldState>? scaffoldKey})
      : super(ProductDetailView.name,
            path: '/product-detail',
            args: ProductDetailViewArgs(
                key: key, id: id, manager: manager, scaffoldKey: scaffoldKey));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs(
      {this.key, required this.id, required this.manager, this.scaffoldKey});

  final _i22.Key? key;

  final int id;

  final _i23.Dio manager;

  final _i22.GlobalKey<_i22.ScaffoldState>? scaffoldKey;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, id: $id, manager: $manager, scaffoldKey: $scaffoldKey}';
  }
}

/// generated route for
/// [_i4.LoginView]
class LoginView extends _i21.PageRouteInfo<void> {
  const LoginView() : super(LoginView.name, path: '/login');

  static const String name = 'LoginView';
}

/// generated route for
/// [_i5.RegisterView]
class RegisterView extends _i21.PageRouteInfo<void> {
  const RegisterView() : super(RegisterView.name, path: '/register');

  static const String name = 'RegisterView';
}

/// generated route for
/// [_i6.ForgotView]
class ForgotView extends _i21.PageRouteInfo<void> {
  const ForgotView() : super(ForgotView.name, path: '/forgot');

  static const String name = 'ForgotView';
}

/// generated route for
/// [_i7.EmailVerificationView]
class EmailVerificationView extends _i21.PageRouteInfo<void> {
  const EmailVerificationView()
      : super(EmailVerificationView.name, path: '/verification');

  static const String name = 'EmailVerificationView';
}

/// generated route for
/// [_i8.Checkout]
class Checkout extends _i21.PageRouteInfo<void> {
  const Checkout() : super(Checkout.name, path: '/checkout');

  static const String name = 'Checkout';
}

/// generated route for
/// [_i9.EditProfile]
class EditProfile extends _i21.PageRouteInfo<void> {
  const EditProfile() : super(EditProfile.name, path: 'edit-profile');

  static const String name = 'EditProfile';
}

/// generated route for
/// [_i10.ShippingAdress]
class ShippingAdress extends _i21.PageRouteInfo<void> {
  const ShippingAdress() : super(ShippingAdress.name, path: '/shipping-adress');

  static const String name = 'ShippingAdress';
}

/// generated route for
/// [_i11.OrderHistory]
class OrderHistory extends _i21.PageRouteInfo<void> {
  const OrderHistory() : super(OrderHistory.name, path: '/order-history');

  static const String name = 'OrderHistory';
}

/// generated route for
/// [_i12.TrackOrder]
class TrackOrder extends _i21.PageRouteInfo<void> {
  const TrackOrder() : super(TrackOrder.name, path: '/track-order');

  static const String name = 'TrackOrder';
}

/// generated route for
/// [_i13.Cards]
class Cards extends _i21.PageRouteInfo<void> {
  const Cards() : super(Cards.name, path: '/cards');

  static const String name = 'Cards';
}

/// generated route for
/// [_i14.EditCard]
class EditCard extends _i21.PageRouteInfo<void> {
  const EditCard() : super(EditCard.name, path: '/edit-cards');

  static const String name = 'EditCard';
}

/// generated route for
/// [_i15.Notifications]
class Notifications extends _i21.PageRouteInfo<void> {
  const Notifications() : super(Notifications.name, path: '/notifications');

  static const String name = 'Notifications';
}

/// generated route for
/// [_i16.Settings]
class Settings extends _i21.PageRouteInfo<void> {
  const Settings() : super(Settings.name, path: '/app-settings');

  static const String name = 'Settings';
}

/// generated route for
/// [_i17.HomeView]
class HomeView extends _i21.PageRouteInfo<void> {
  const HomeView() : super(HomeView.name, path: 'home');

  static const String name = 'HomeView';
}

/// generated route for
/// [_i18.CartView]
class CartView extends _i21.PageRouteInfo<void> {
  const CartView() : super(CartView.name, path: 'cart');

  static const String name = 'CartView';
}

/// generated route for
/// [_i19.FavoriteView]
class FavoriteView extends _i21.PageRouteInfo<void> {
  const FavoriteView() : super(FavoriteView.name, path: 'favorite');

  static const String name = 'FavoriteView';
}

/// generated route for
/// [_i20.AccountView]
class AccountView extends _i21.PageRouteInfo<void> {
  const AccountView() : super(AccountView.name, path: 'account');

  static const String name = 'AccountView';
}
