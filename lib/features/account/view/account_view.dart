import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/extansions/string_extansion.dart';
import 'package:linda_wedding_ecommerce/core/init/lang/locale_keys.g.dart';

import '../../../core/constants/app/colors_constants.dart';
import '../../../core/init/routes/routes.gr.dart';
import '../../../product/widgets/iconbutton_widget.dart';

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
            backgroundColor: ColorConstants.myWhite,
            body: SingleChildScrollView(
              child: Padding(
                  padding: context.paddingMedium,
                  child: Center(
                    child: Column(
                      children: [
                        Text(LocaleKeys.account_topTitle.locale,
                            style: const TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor:
                                      ColorConstants.secondaryColor,
                                  child: CircleAvatar(
                                      backgroundColor:
                                          ColorConstants.secondaryColor,
                                      backgroundImage: const NetworkImage(
                                        "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250",
                                      ),
                                      radius: 27),
                                ),
                                context.emptySizedWidthBoxNormal,
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(LocaleKeys.account_demoUser.locale,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      Text(LocaleKeys.account_demoMail.locale,
                                          style: const TextStyle(fontSize: 12)),
                                    ])
                              ],
                            ),
                          ),
                        ),
                        context.emptySizedHeightBoxLow,
                        ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.zero,
                          primary: true,
                          separatorBuilder: (context, index) => const Divider(
                              height: 0, indent: 70, endIndent: 30),
                          shrinkWrap: true,
                          itemCount: 8,
                          itemBuilder: (context, index) =>
                              _buildListTile(context, index),
                        ),
                        context.emptySizedHeightBoxLow,
                        Text("v.1.0.0",
                            style: TextStyle(
                                fontSize: 12,
                                color: ColorConstants.myLightGrey))
                      ],
                    ),
                  )),
            )));
  }

  ListTile _buildListTile(BuildContext context, int index) {
    List<String> actionNames = [
      LocaleKeys.account_action_editProfile_name.locale,
      LocaleKeys.account_action_shipping.locale,
      LocaleKeys.account_action_order.locale,
      LocaleKeys.account_action_trackOrder.locale,
      LocaleKeys.account_action_cards_name.locale,
      LocaleKeys.account_action_notif.locale,
      LocaleKeys.account_action_appSet.locale,
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

    List<PageRouteInfo<dynamic>> actionRoute = const [
      EditProfile(),
      ShippingAdress(),
      OrderHistory(),
      TrackOrder(),
      Cards(),
      Notifications(),
      Settings(),
      LoginView(),
    ];

    return ListTile(
      //dense: true,
      title: Text(actionNames[index],
          style: TextStyle(
              fontSize: 12,
              color: ColorConstants.myMediumGrey,
              fontWeight: FontWeight.bold)),
      trailing: IconButtonWidget(
        size: 16,
        bColor: ColorConstants.myWhite,
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
      onTap: () => index == 7
          ? context.router.replaceAll([actionRoute[index]])
          : context.pushRoute(actionRoute[index]),
    );
  }
}
