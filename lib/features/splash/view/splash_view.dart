import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/routes/routes.gr.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Future.delayed(const Duration(seconds: 2), () {
          context.router.replaceAll(const [LoginView()]);
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(
          child: FadeIn(
            duration: const Duration(milliseconds: 400),
            child: const Text("LindaWedding",
                style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
