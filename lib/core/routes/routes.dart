import 'package:auto_route/auto_route.dart';
import 'package:linda_wedding_ecommerce/features/auth/login/view/login_view.dart';
import 'package:linda_wedding_ecommerce/features/onboard/view/onboard_view.dart';
import 'package:linda_wedding_ecommerce/features/product/view/product_detail_view.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginView, initial: true),
    AutoRoute(page: OnboardView),
    AutoRoute(page: ProductDetailView),
  ],
)
class $AppRouter {}
