import 'package:auto_route/auto_route.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/view/login_view.dart';
import 'package:linda_wedding_ecommerce/features/onboard/view/onboard_view.dart';
import 'package:linda_wedding_ecommerce/features/product/view/product_detail_view.dart';
import 'package:linda_wedding_ecommerce/features/splash/view/splash_view.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: LoginView),
    AutoRoute(page: OnboardView),
    AutoRoute(page: ProductDetailView),
  ],
)
class $AppRouter {}
