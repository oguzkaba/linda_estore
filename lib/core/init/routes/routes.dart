import 'package:auto_route/auto_route.dart';
import 'package:linda_wedding_ecommerce/features/account/view/account_view.dart';
import 'package:linda_wedding_ecommerce/app/view/app_view.dart';
import 'package:linda_wedding_ecommerce/features/auth/forgot/verification/verification_view.dart';
import 'package:linda_wedding_ecommerce/features/auth/forgot/view/forgot_view.dart';
import 'package:linda_wedding_ecommerce/features/auth/register/view/register_view.dart';
import 'package:linda_wedding_ecommerce/features/cart/view/cart_view.dart';
import 'package:linda_wedding_ecommerce/features/checkout/view/checkout_view.dart';

import '../../../features/auth/login/view/login_view.dart';
import '../../../features/favorite/view/favorite_view.dart';
import '../../../features/home/view/home_view.dart';
import '../../../features/product/view/product_detail_view.dart';
import '../../../features/splash/view/splash_view.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/", page: SplashView, initial: true),
    AutoRoute(path: "/app", page: AppView),
    AutoRoute(path: "/home", page: HomeView),
    AutoRoute(path: "/product-detail", page: ProductDetailView),
    AutoRoute(path: "/account", page: AccountView),
    AutoRoute(path: "/login", page: LoginView),
    AutoRoute(path: "/register", page: RegisterView),
    AutoRoute(path: "/forgot", page: ForgotView),
    AutoRoute(path: "/favorite", page: FavoriteView),
    AutoRoute(path: "/verification", page: EmailVerificationView),
    AutoRoute(path: "/cart", page: CartView),
    AutoRoute(path: "/checkout", page: CheckOutView),
  ],
)
class $AppRouter {}
