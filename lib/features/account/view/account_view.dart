import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
          padding: context.paddingMedium,
          child: Center(
            child: Column(
              children: [
                const Text("Account",
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                context.emptySizedHeightBoxNormal,
                Row(
                  children: const [
                    CircleAvatar(
                        backgroundImage: NetworkImage(
                          "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
                        ),
                        radius: 50)
                  ],
                )
              ],
            ),
          )),
    )));
  }
}
