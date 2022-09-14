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
import 'package:linda_wedding_ecommerce/features/onboard/model/products_model.dart'
    as _i6;
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
      final args = routeData.argsAs<ProductDetailViewArgs>(
          orElse: () => const ProductDetailViewArgs());
      return _i4.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i3.ProductDetailView(
              key: args.key, productModel: args.productModel, id: args.id));
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
class ProductDetailView extends _i4.PageRouteInfo<ProductDetailViewArgs> {
  ProductDetailView({_i5.Key? key, _i6.ProductsModel? productModel, int? id})
      : super(ProductDetailView.name,
            path: '/product-detail-view',
            args: ProductDetailViewArgs(
                key: key, productModel: productModel, id: id));

  static const String name = 'ProductDetailView';
}

class ProductDetailViewArgs {
  const ProductDetailViewArgs({this.key, this.productModel, this.id});

  final _i5.Key? key;

  final _i6.ProductsModel? productModel;

  final int? id;

  @override
  String toString() {
    return 'ProductDetailViewArgs{key: $key, productModel: $productModel, id: $id}';
  }
}
