import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../core/constants/cache/cache_constants.dart';
import '../../../core/extensions/string_extansion.dart';
import '../../../core/init/cache/app_cache_manager.dart';
import '../../../core/init/cache/app_cache_model.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/init/network/service/network_service.dart';
import '../../../core/init/routes/routes.gr.dart';
import '../../../core/init/themes/cubit/theme_cubit.dart';
import '../../auth/bloc/auth_bloc.dart';
import '../../favorite/bloc/favorite_bloc.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;
  AppCacheManager appCacheManager = AppCacheManager(CacheConstants.appCache);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controlAuth(const Duration(seconds: 3));
    });
  }

  Future<void> controlAuth(Duration duration) async {
    await appCacheManager.init();
    AppCacheModel? getBoxModel =
        appCacheManager.getModel(CacheConstants.appCache);

    if (getBoxModel?.token != null) {
      await Future.delayed(duration).then((value) {
        debugPrint('AuthControl --> Autharized Success');
        context
            .read<ThemeCubit>()
            .changeTheme(context, getBoxModel!.isDark ?? false);

        BlocProvider.of<AuthBloc>(context).add(AuthEvent.authanticate(
            manager: manager,
            scaffoldKey: scaffoldKey,
            token: getBoxModel.token));

        BlocProvider.of<FavoriteBloc>(context)
            .add(FavoriteEvent.init(favList: getBoxModel.favorites ?? []));

        context.router.push(DashboardRouter(children: const [HomeView()]));
      });
    } else {
      debugPrint('AuthControl --> Unautharized');
      await Future.delayed(duration).then((value) {
        BlocProvider.of<FavoriteBloc>(context)
            .add(const FavoriteEvent.init(favList: []));
        context.router.pushNamed('/login');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Center(
          child: FadeIn(
            duration: const Duration(seconds: 3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BounceInDown(
                  duration: const Duration(seconds: 3),
                  child: Icon(Icons.shopping_bag_outlined,
                      color: ColorConstants.primaryColor, size: 50),
                ),
                Text(LocaleKeys.splash_appName.locale,
                    style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
