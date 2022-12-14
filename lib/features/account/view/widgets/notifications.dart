import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/constants/app/image_constants.dart';
import '../../../../core/extensions/string_extansion.dart';
import '../../../../core/init/lang/locale_keys.g.dart';
import '../../../../core/widgets/button/iconbutton_widget.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  var notifications = [
    {
      "title": "Eartha Coenraets",
      "content": "Environmental tobacco smoke (acute) (chronic)",
      "read": true,
    },
    {
      "title": "Bla bla bla",
      "content": "Contact with and (suspected) ",
      "read": false,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              title: Text(LocaleKeys.account_action_notif.locale,
                  style: TextStyle(color: ColorConstants.myBlack)),
              leading: Padding(
                padding: const EdgeInsets.all(4.0),
                child: IconButtonWidget(
                    size: 16,
                    onPress: () => context.router.pop(),
                    icon: Icons.chevron_left_rounded,
                    iColor: ColorConstants.myMediumGrey,
                    tooltip: 'Back'),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true),
          body: _buildReviewsList(notifications)),
    );
  }

  ListView _buildReviewsList(List<Map<String, Object>> notifications) {
    return ListView.builder(
      itemCount: notifications.length,
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: ((context, index) => Dismissible(
          dismissThresholds: const {DismissDirection.startToEnd: 0.6},
          confirmDismiss: (direction) async =>
              await Future.delayed(context.durationLow)
                  .whenComplete(() => notifications.removeAt(index)),
          movementDuration: context.durationNormal,
          direction: DismissDirection.startToEnd,
          background: _slideRightBackground(),
          //secondaryBackground: _slideLeftBackground(),
          key: UniqueKey(),
          child: Card(
            child: ListTile(
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      width: 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: ColorConstants.myRed)),
                  context.emptySizedWidthBoxLow,
                  CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                      ImageConstants.getAvatarUrl(index),
                    ),
                  ),
                ],
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(notifications[index]['title'].toString(),
                      style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
              subtitle: Text(notifications[index]['content'].toString()),
            ),
          ))),
    );
  }

  Container _slideRightBackground() {
    return Container(
      color: ColorConstants.myBlue,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            context.emptySizedWidthBoxNormal,
            Icon(
              Icons.mark_chat_read_rounded,
              color: ColorConstants.myWhite,
            ),
          ],
        ),
      ),
    );
  }
}
