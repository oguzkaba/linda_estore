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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controlAppState(const Duration(seconds: 3));
    });
  }

  Future<void> controlAppState(Duration duration) async {
    //await _getProductsAndCategory();
    await _redirect(duration);
  }

  Future<void> _redirect(Duration duration) async {
    await Future.delayed(duration);
    context.router.replaceAll(const [LoginView()]);
  }

  // Future<void> _getProductsAndCategory() async {
  //  BlocProvider.of<CategoriesBloc>(context).add((const CategoriesFetched(0)));
  //   BlocProvider.of<ProductsBloc>(context).add((ProductsFetched()));
  // }

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
