import 'package:auto_route/auto_route.dart';
import 'package:linda_wedding_ecommerce/features/auth/forgot/verification/verification_view.dart';
import 'package:linda_wedding_ecommerce/features/auth/forgot/view/forgot_view.dart';
import 'package:linda_wedding_ecommerce/features/auth/register/view/register_view.dart';

import '../../../features/auth/login/view/login_view.dart';
import '../../../features/home/view/home_view.dart';
import '../../../features/product/view/product_detail_view.dart';
import '../../../features/splash/view/splash_view.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.slideRightWithFade,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashView, initial: true),
    AutoRoute(page: LoginView),
    AutoRoute(page: ForgotView),
    AutoRoute(page: EmailVerificationView),
    AutoRoute(page: RegisterView),
    AutoRoute(page: HomeView),
    AutoRoute(page: ProductDetailView),
  ],
)
class $AppRouter {}
