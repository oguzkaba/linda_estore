// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:linda_wedding_ecommerce/core/constants/app/colors_constants.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';
import 'package:linda_wedding_ecommerce/features/favorite/cubit/favorite_cubit.dart';

import '../../../core/init/routes/routes.gr.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  List<BottomNavigationBarItem> screens = [
    BottomNavigationBarItem(
        label: LocaleKeys.dashboard_bottomNav_bNavHome.locale,
        icon: const Icon(Icons.home_rounded)),
    BottomNavigationBarItem(
        label: LocaleKeys.dashboard_bottomNav_bNavCart.locale,
        icon: const Icon(Icons.shopping_basket_rounded)),
    BottomNavigationBarItem(
        label: LocaleKeys.dashboard_bottomNav_bNavFav.locale,
        icon: const Icon(Icons.favorite_rounded)),
    BottomNavigationBarItem(
        label: LocaleKeys.dashboard_bottomNav_bNavAcc.locale,
        icon: const Icon(Icons.person)),
  ];

  @override
  Widget build(BuildContext context) {
    final favoriteList = context.watch<FavoriteCubit>().favList;
    return AutoTabsScaffold(
      routes: [
        const HomeView(),
        CartView(cartModel: null),
        const FavoriteView(),
        const AccountView()
      ],
      bottomNavigationBuilder: (_, tabs) => BottomNavigationBar(
          onTap: tabs.setActiveIndex,
          currentIndex: tabs.activeIndex,
          iconSize: 22,
          items: screens
              .map(
                (e) => BottomNavigationBarItem(
                  label: e.label,
                  icon: e.label == "Favorites" && favoriteList.isNotEmpty
                      ? Stack(children: [
                          e.icon,
                          Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                                backgroundColor: ColorConstants.myBlack,
                                radius: 6,
                                child: Center(
                                    child: Text(favoriteList.length.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                                fontSize: 8,
                                                color:
                                                    ColorConstants.myWhite)))),
                          )
                        ])
                      : e.icon,
                ),
              )
              .toList()),
    );
  }
}
