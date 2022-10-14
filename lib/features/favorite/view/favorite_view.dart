import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
          padding: context.paddingMedium,
          child: const Center(
            child: Text("Favorites",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          )),
    )));
  }
}
