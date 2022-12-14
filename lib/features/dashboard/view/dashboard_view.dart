// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kartal/kartal.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../core/extensions/string_extansion.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../favorite/bloc/favorite_bloc.dart';

import '../../../core/init/routes/routes.gr.dart';

// ignore: must_be_immutable
class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  NavigationDestination _buildNavBarItem(
      String label, IconData icon, IconData selectedIcon,
      {Widget? badgeWidget}) {
    return NavigationDestination(
        selectedIcon: badgeWidget == null ? Icon(selectedIcon) : badgeWidget,
        label: label,
        icon: badgeWidget == null
            ? Icon(icon, color: ColorConstants.myMediumGrey)
            : badgeWidget);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, stateFav) {
      return stateFav.maybeWhen(
          orElse: () => context.emptySizedHeightBoxLow,
          loaded: (favList) => AutoTabsScaffold(
                routes: [
                  const HomeView(),
                  CartView(),
                  const FavoriteView(),
                  const AccountView()
                ],
                bottomNavigationBuilder: (context, tabsRouter) => NavigationBar(
                  selectedIndex: tabsRouter.activeIndex,
                  height: 50,
                  elevation: 20,
                  onDestinationSelected: (value) =>
                      tabsRouter.setActiveIndex(value),
                  destinations: [
                    _buildNavBarItem(
                        LocaleKeys.dashboard_bottomNav_bNavHome.locale,
                        Icons.home_outlined,
                        Icons.home_filled),
                    _buildNavBarItem(
                        LocaleKeys.dashboard_bottomNav_bNavCart.locale,
                        Icons.shopping_basket_outlined,
                        Icons.shopping_basket_rounded),
                    _buildNavBarItem(
                        badgeWidget: favList.isNotEmpty
                            ? _buildBadge(tabsRouter, favList, context)
                            : null,
                        LocaleKeys.dashboard_bottomNav_bNavFav.locale,
                        Icons.favorite_border_rounded,
                        Icons.favorite_rounded),
                    _buildNavBarItem(
                        LocaleKeys.dashboard_bottomNav_bNavAcc.locale,
                        Icons.person_outline,
                        Icons.person),
                  ],
                ),
                //bottomNavigationBuilder: (_, tabs) => _buildBottomNavBar(tabs, favList, context),
              ));
    });
  }

  Stack _buildBadge(
      TabsRouter tabsRouter, List<int> favList, BuildContext context) {
    return Stack(children: [
      Icon(
          tabsRouter.activeIndex == 2
              ? Icons.favorite_rounded
              : Icons.favorite_border_rounded,
          color: tabsRouter.activeIndex == 2
              ? ColorConstants.primaryColor
              : ColorConstants.myMediumGrey),
      Positioned(
        right: 0,
        top: 0,
        child: CircleAvatar(
            backgroundColor: tabsRouter.activeIndex == 2
                ? ColorConstants.myBlack
                : ColorConstants.primaryColor,
            radius: 6,
            child: Center(
                child: Text(favList.length.toString(),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 8, color: ColorConstants.myWhite)))),
      )
    ]);
  }
}
