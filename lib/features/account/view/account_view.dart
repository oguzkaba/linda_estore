import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:kartal/kartal.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../core/extensions/string_extansion.dart';
import '../../../core/init/lang/locale_keys.g.dart';
import '../../../core/init/network/service/network_service.dart';
import '../../../core/init/routes/routes.gr.dart';
import '../../../core/init/themes/cubit/theme_cubit.dart';
import '../../../core/utils/custom_error_widgets.dart';
import '../../../core/widgets/button/iconbutton_widget.dart';
import '../../../core/widgets/loading/loading.dart';
import '../../auth/bloc/auth_bloc.dart';
import '../../error/view/error_view.dart';
import '../../favorite/bloc/favorite_bloc.dart';
import '../bloc/account_bloc.dart';
import '../model/account_model.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final manager = NetworkService.instance.networkManager;

  @override
  void initState() {
    BlocProvider.of<AccountBloc>(context)
        .add(AccountEvent.fetch(manager: manager, scaffoldKey: scaffoldKey));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: BlocConsumer<AccountBloc, AccountState>(
                listener: (context, state) {
      state.whenOrNull(
          error: (error) => CustomErrorWidgets.showError(
              context, error.toString(),
              topMargin: 115));
    }, builder: (context, state) {
      return state.when(
          initial: () =>
              const LoadingIndicatorWidget(lottieName: "account_loading"),
          loading: () =>
              const LoadingIndicatorWidget(lottieName: "account_loading"),
          loaded: (accountModel) => _buildAccountLoaded(context, accountModel),
          error: (error) => ErrorView(errorText: error.toString()));
    })));
  }

  SingleChildScrollView _buildAccountLoaded(
      BuildContext context, AccountModel accountModel) {
    return SingleChildScrollView(
      child: Padding(
          padding: context.paddingMedium,
          child: Center(
            child: Column(
              children: [
                Text(LocaleKeys.account_topTitle.locale,
                    style: Theme.of(context).textTheme.headlineSmall),
                _buildProfileCard(context, accountModel),
                context.emptySizedHeightBoxLow,
                _buildList(accountModel),
                context.emptySizedHeightBoxLow,
                Text("v.1.0.0", style: Theme.of(context).textTheme.labelSmall)
              ],
            ),
          )),
    );
  }

  ListView _buildList(AccountModel accountModel) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      primary: true,
      separatorBuilder: (context, index) =>
          const Divider(height: 0, indent: 70, endIndent: 30),
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (context, index) =>
          _buildListTile(context, index, accountModel),
    );
  }

  Container _buildProfileCard(BuildContext context, AccountModel accountModel) {
    return Container(
      margin: context.verticalPaddingMedium,
      padding: context.horizontalPaddingMedium,
      decoration: BoxDecoration(
          color: context.watch<ThemeCubit>().state.isDark
              ? ColorConstants.myDark
              : ColorConstants.myWhite,
          boxShadow: [
            BoxShadow(
              color: context.watch<ThemeCubit>().state.isDark
                  ? ColorConstants.myMediumGrey
                  : ColorConstants.myLightGrey,
              offset: const Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
          border: GradientBoxBorder(
              gradient: LinearGradient(colors: [
                ColorConstants.primaryColor,
                ColorConstants.secondaryColor,
                ColorConstants.primaryColor,
              ]),
              width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: ColorConstants.secondaryColor,
              child: CircleAvatar(
                  backgroundColor: ColorConstants.secondaryColor,
                  backgroundImage: const NetworkImage(
                    "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
                  ),
                  radius: 27),
            ),
            context.emptySizedWidthBoxNormal,
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                  "${accountModel.name.firstname.toCapitalized()} ${accountModel.name.lastname.toUpperCase()}",
                  style: Theme.of(context).textTheme.titleSmall),
              Text(accountModel.email,
                  style: Theme.of(context).textTheme.labelMedium),
              Text(accountModel.phone,
                  style: Theme.of(context).textTheme.labelMedium),
            ])
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(
      BuildContext context, int index, AccountModel accountModel) {
    List<String> actionNames = [
      LocaleKeys.account_action_editProfile_title.locale,
      LocaleKeys.account_action_shipping.locale,
      LocaleKeys.account_action_order.locale,
      LocaleKeys.account_action_trackOrder_title.locale,
      LocaleKeys.account_action_cards_title.locale,
      LocaleKeys.account_action_notif.locale,
      LocaleKeys.account_action_appSet_title.locale,
      LocaleKeys.account_action_logout.locale,
    ];

    List<IconData> icons = [
      Icons.edit_note_rounded,
      Icons.location_on_rounded,
      Icons.history_rounded,
      Icons.local_shipping_rounded,
      Icons.credit_card_rounded,
      Icons.notifications_rounded,
      Icons.settings_rounded,
      Icons.logout_rounded,
    ];

    List<PageRouteInfo<dynamic>> actionRoute = [
      const EditProfile(),
      const ShippingAdress(),
      const OrderHistory(),
      TrackOrder(accountModel: accountModel),
      const Cards(),
      const Notifications(),
      const Settings(),
      const LoginView(),
    ];

    return ListTile(
        //dense: true,
        title: Text(actionNames[index],
            style: Theme.of(context).textTheme.bodySmall),
        trailing: IconButtonWidget(
          size: 16,
          bColor: context.watch<ThemeCubit>().state.isDark
              ? ColorConstants.myDark
              : ColorConstants.myWhite,
          tooltip: actionNames[index],
          iColor: ColorConstants.myMediumGrey,
          icon: Icons.chevron_right_rounded,
        ),
        leading: IconButtonWidget(
          size: 16,
          circleRadius: 16,
          iColor: ColorConstants.primaryColor,
          icon: icons[index],
          tooltip: actionNames[index],
        ),
        onTap: () {
          if (index == 7) {
            context.read<AuthBloc>().add(
                AuthEvent.logout(manager: manager, scaffoldKey: scaffoldKey));
            context
                .read<FavoriteBloc>()
                .add(const FavoriteEvent.init(favList: []));
            Future.delayed(context.durationLow).whenComplete(() => context
                .router
                .pushAndPopUntil(actionRoute[index], predicate: (_) => false));
          } else {
            context.pushRoute(actionRoute[index]);
          }
        });
  }
}
