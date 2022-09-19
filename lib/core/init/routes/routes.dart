import 'package:auto_route/auto_route.dart';

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
    AutoRoute(page: HomeView),
    AutoRoute(page: ProductDetailView),
  ],
)
class $AppRouter {}
