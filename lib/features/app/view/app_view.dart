import 'package:flutter/material.dart';

import '../../../core/constants/app/application_constants.dart';

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  ValueNotifier<int> selectIndex = ValueNotifier(0);

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
            iconSize: 18,
            items: screens
                .map(
                  (e) => BottomNavigationBarItem(
                    label: e.label,
                    icon: e.icon,
                  ),
                )
                .toList()),
      ),
    );
  }
}
