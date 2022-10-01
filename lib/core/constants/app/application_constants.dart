import 'package:animate_do/animate_do.dart';
import 'package:flutter/widgets.dart';

import '../../../features/account/view/account_view.dart';
import '../../../features/cart/view/cart_view.dart';
import '../../../features/favorite/view/favorite_view.dart';
import '../../../features/home/view/home_view.dart';

class ApplicationConstants {
  static const langAssetPath = 'asset/lang';

  static final List<Widget> bottomRouteList = [
    FadeIn(duration: const Duration(seconds: 1), child: const HomeView()),
    FadeIn(duration: const Duration(seconds: 1), child: const CartView()),
    FadeIn(duration: const Duration(seconds: 1), child: const FavoriteView()),
    FadeIn(duration: const Duration(seconds: 1), child: const AccountView())
  ];
}
