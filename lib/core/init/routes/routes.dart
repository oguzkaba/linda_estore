import 'package:auto_route/auto_route.dart';

import '../../../features/account/view/account_view.dart';
import '../../../features/account/view/widgets/cards.dart';
import '../../../features/account/view/widgets/edit_card.dart';
import '../../../features/account/view/widgets/edit_profile.dart';
import '../../../features/account/view/widgets/notifications.dart';
import '../../../features/account/view/widgets/order_history.dart';
import '../../../features/account/view/widgets/settings.dart';
import '../../../features/account/view/widgets/shipping_adress.dart';
import '../../../features/account/view/widgets/track_order.dart';
import '../../../features/auth/forgot/verification/verification_view.dart';
import '../../../features/auth/forgot/view/forgot_view.dart';
import '../../../features/auth/login/view/login_view.dart';
import '../../../features/auth/register/view/register_view.dart';
import '../../../features/cart/view/cart_view.dart';
import '../../../features/cart/view/widgets/checkout.dart';
import '../../../features/dashboard/view/dashboard_view.dart';
import '../../../features/favorite/view/favorite_view.dart';
import '../../../features/home/view/home_view.dart';
import '../../../features/product/view/product_detail_view.dart';
import '../../../features/splash/view/splash_view.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.fadeIn,
  durationInMilliseconds: 300,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/", page: SplashView, initial: true),
    AutoRoute(
        path: "/dashboard",
        name: "DashboardRouter",
        page: Dashboard,
        children: [
          AutoRoute(path: "home", page: HomeView),
          AutoRoute(path: "cart", page: CartView),
          AutoRoute(path: "favorite", page: FavoriteView),
          AutoRoute(path: "account", page: AccountView),
          RedirectRoute(path: '*', redirectTo: ''),
        ]),
    AutoRoute(path: "/product-detail", page: ProductDetailView),
    AutoRoute(path: "/login", page: LoginView),
    AutoRoute(path: "/register", page: RegisterView),
    AutoRoute(path: "/forgot", page: ForgotView),
    AutoRoute(path: "/verification", page: EmailVerificationView),
    AutoRoute(path: "/checkout", page: Checkout),
    AutoRoute(path: "edit-profile", page: EditProfile),
    AutoRoute(path: "/shipping-adress", page: ShippingAdress),
    AutoRoute(path: "/order-history", page: OrderHistory),
    AutoRoute(path: "/track-order", page: TrackOrder),
    AutoRoute(path: "/cards", page: Cards),
    AutoRoute(path: "/edit-cards", page: EditCard),
    AutoRoute(path: "/notifications", page: Notifications),
    AutoRoute(path: "/app-settings", page: Settings),
  ],
)
class $AppRouter {}
