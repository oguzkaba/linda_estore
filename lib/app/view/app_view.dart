import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/core/constants/app/colors_constants.dart';
import 'package:linda_wedding_ecommerce/features/favorite/cubit/favorite_cubit.dart';

import '../../core/constants/app/application_constants.dart';

class AppView extends StatefulWidget {
  final int? id;
  const AppView({super.key, this.id});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  ValueNotifier<int> selectIndex = ValueNotifier(0);

  @override
  void initState() {
    super.initState();
    selectIndex.value = widget.id ?? selectIndex.value;
  }

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
    return ValueListenableBuilder(
      valueListenable: selectIndex,
      builder: (context, value, child) => Scaffold(
        body: IndexedStack(
          index: selectIndex.value,
          children: ApplicationConstants.bottomRouteList,
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) => selectIndex.value = value,
            currentIndex: selectIndex.value,
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
      ),
    );
  }
}
