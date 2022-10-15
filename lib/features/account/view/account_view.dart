import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:linda_wedding_ecommerce/core/init/routes/routes.gr.dart';
import 'package:linda_wedding_ecommerce/product/widgets/iconbutton_widget.dart';

import '../../../core/constants/app/colors_constants.dart';

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
                        const Text("Account",
                            style: TextStyle(
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
                                    children: const [
                                      Text("Demo User",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                        "demo_user@gmail.com",
                                      ),
                                    ])
                              ],
                            ),
                          ),
                        ),
                        context.emptySizedHeightBoxLow,
                        ListView.separated(
                          separatorBuilder: (context, index) => const Divider(),
                          shrinkWrap: true,
                          itemCount: 7,
                          itemBuilder: (context, index) =>
                              _buildListTile(context, index),
                        )
                      ],
                    ),
                  )),
            )));
  }

  ListTile _buildListTile(BuildContext context, int index) {
    List actionList = [];

    List<String> actionNames = [
      "Edit Profile",
      "Shipping Adress",
      "Order History",
      "Track Order",
      "Cards",
      "Notifications",
      "Log Out",
    ];

    List<IconData> icons = [
      Icons.edit_note_rounded,
      Icons.location_on_rounded,
      Icons.history_rounded,
      Icons.local_shipping_rounded,
      Icons.credit_card_rounded,
      Icons.notifications_rounded,
      Icons.logout_rounded,
    ];

    List<PageRouteInfo<dynamic>> actionRoute = [
      const EditProfile(),
      const Cards(),
      const Notifications(),
      const OrderHistory(),
      const ShippingAdress(),
      const TrackOrder(),
      const LoginView(),
    ];

    return ListTile(
      contentPadding: context.paddingLow,
      title: Text(actionNames[index],
          style: TextStyle(
              fontSize: 12,
              color: ColorConstants.myMediumGrey,
              fontWeight: FontWeight.bold)),
      trailing: IconButton(
        splashRadius: 1,
        icon: const Icon(Icons.chevron_right_rounded),
        onPressed: () => context.router.replaceAll([actionRoute[index]]),
      ),
      leading: IconButtonWidget(
        iColor: ColorConstants.primaryColor,
        icon: icons[index],
        tooltip: actionNames[index],
      ),
    );
  }
}
