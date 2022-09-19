import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/init/routes/routes.gr.dart';
import '../../../../product/widgets/ebutton_widget.dart';
import '../../../../product/widgets/iconbutton_widget.dart';
import '../../../../product/widgets/textfield_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: Column(
          mainAxisAlignment: context.isKeyBoardOpen
              ? MainAxisAlignment.start
              : MainAxisAlignment.center,
          children: [
            Visibility(
              visible: !context.isKeyBoardOpen,
              child: Column(
                children: const [
                  Text("Hello Again!",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  SizedBox(height: 14),
                  Text("Welcome back you've been missed!",
                      style: TextStyle(color: Colors.black38)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const TextFieldWidget(
                pIcon: Icons.person_outlined,
                labelText: "UserName",
                hintText: "Enter username"),
            const SizedBox(height: 14),
            const TextFieldWidget(
                pIcon: Icons.lock_outlined,
                sIcon: Icons.visibility_off_outlined,
                obscureText: true,
                labelText: "Password",
                hintText: "Enter password"),
            const SizedBox(height: 14),
            const Align(
              alignment: Alignment.centerRight,
              child: Text("Recovery Password",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54)),
            ),
            const SizedBox(height: 30),
            EButtonWidget(onPress: () => context.router.push(const HomeView())),
            const SizedBox(height: 30),
            const Text("- Or continue with -",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                IconButtonWidget(
                  icon: Icons.g_mobiledata,
                  size: 38,
                ),
                IconButtonWidget(icon: Icons.apple),
                IconButtonWidget(icon: Icons.facebook),
              ],
            )
          ],
        ),
      ),
    );
  }
}
