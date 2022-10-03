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
          body: Center(
              child: Column(
        children: [
          const Text("Account", style: TextStyle(fontWeight: FontWeight.bold)),
          Padding(padding: context.paddingLow),
        ],
      ))),
    );
  }
}
