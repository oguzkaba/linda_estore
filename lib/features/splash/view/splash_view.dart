import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/constants/app/colors_constants.dart';
import '../../../core/init/network/service/network_service.dart';
import '../../../core/init/routes/routes.gr.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controlAppState(const Duration(seconds: 3));
    });
  }

  Future<void> controlAppState(Duration duration) async {
    //await _authApp();
    await _redirect(duration);
  }

  Future<void> _redirect(Duration duration) async {
    await Future.delayed(duration);
    context.router.replaceAll(const [LoginView()]);
  }

  // Future<void> _authApp() async {
  //  BlocProvider.of<AuthBloc>(context).add(( LoginUser(manager, scaffoldKey,LoginRequestModel(
  //                           username: "mor_2314", password: "83r5^_"))));
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
                Icon(Icons.shopping_bag_rounded,
                    color: ColorConstants.myWhite, size: 30),
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
