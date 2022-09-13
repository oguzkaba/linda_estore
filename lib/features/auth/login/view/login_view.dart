import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:linda_wedding_ecommerce/core/routes/routes.gr.dart';

import '../../../../widgets/export_widget.dart';
import '../../../../widgets/iconbutton_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello Again!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 14),
              const Text(
                "Welcome back you've been missed!",
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
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: EButtonWidget(
                      onPress: () => context.router.push(const OnboardView()))),
              const SizedBox(height: 30),
              const Text("----- Or continue with -----",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54)),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  IconButtonWidget(icon: Icons.g_mobiledata),
                  IconButtonWidget(icon: Icons.apple),
                  IconButtonWidget(icon: Icons.facebook),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
