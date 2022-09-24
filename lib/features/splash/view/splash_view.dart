import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/constants/app/colors_constants.dart';
import '../../../core/init/routes/routes.gr.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();

    _redirect();
  }

  Future<void> _redirect() async {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Future.delayed(const Duration(seconds: 3), () {
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
        backgroundColor: ColorConstants.primaryColor,
        body: Center(
          child: FadeIn(
            duration: const Duration(seconds: 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.cartShopping,
                    color: ColorConstants.myWhite),
                Text("LindaStore",
                    style: TextStyle(
                        color: ColorConstants.myWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
