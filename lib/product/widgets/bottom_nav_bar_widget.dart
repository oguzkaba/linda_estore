import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      iconSize: 18,
      items: const [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home_rounded)),
        BottomNavigationBarItem(
            label: "Cart", icon: Icon(Icons.shopping_basket_rounded)),
        BottomNavigationBarItem(
            label: "Favorites", icon: Icon(Icons.favorite_rounded)),
        BottomNavigationBarItem(label: "Account", icon: Icon(Icons.person)),
      ],
    );
  }
}
