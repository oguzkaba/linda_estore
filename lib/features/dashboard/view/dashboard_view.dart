// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:linda_wedding_ecommerce/core/constants/app/colors_constants.dart';
import 'package:linda_wedding_ecommerce/features/favorite/cubit/favorite_cubit.dart';

import '../../../core/init/routes/routes.gr.dart';

class Dashboard extends StatelessWidget {
  final int? id;
  Dashboard({
    Key? key,
    this.id,
  }) : super(key: key);

  List<BottomNavigationBarItem> screens = [
    const BottomNavigationBarItem(
        label: "Home", icon: Icon(Icons.home_rounded)),
    const BottomNavigationBarItem(
        label: "Cart", icon: Icon(Icons.shopping_basket_rounded)),
    const BottomNavigationBarItem(
        label: "Favorites", icon: Icon(Icons.favorite_rounded)),
    const BottomNavigationBarItem(label: "Account", icon: Icon(Icons.person)),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [HomeView(), CartView(), FavoriteView(), AccountView()],
      bottomNavigationBuilder: (_, tabs) => BottomNavigationBar(
          onTap: tabs.setActiveIndex,
          currentIndex: tabs.activeIndex,
          iconSize: 22,
          items: screens
              .map(
                (e) => BottomNavigationBarItem(
                  label: e.label,
                  icon: e.label == "Favorites" &&
                          FavoriteCubit().state.favList.isNotEmpty
                      ? Stack(children: [
                          e.icon,
                          Positioned(
                            right: 0,
                            top: 0,
                            child: CircleAvatar(
                                backgroundColor: ColorConstants.myBlack,
                                radius: 6,
                                child: Center(
                                    child: Text(
                                        FavoriteCubit()
                                            .state
                                            .favList
                                            .length
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 8,
                                            color: ColorConstants.myWhite,
                                            fontWeight: FontWeight.bold)))),
                          )
                        ])
                      : e.icon,
                ),
              )
              .toList()),
    );
  }
}
