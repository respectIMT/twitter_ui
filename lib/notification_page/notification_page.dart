// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:twitter_ui/notification_page/tabbar_line.dart';
import 'package:twitter_ui/notification_page/text_notification.dart';

import 'logo_sector _notification.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({
    super.key,
  });

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            LogoSectorNotification(),
            TabbarLine(),
            NotificationText(
              text:
                  "There was a login to your account @ibrokhimov_2002 from a new device on Aug 21, 20023. Review it now",
            ),
            NotificationText(
              text:
                  "There was a login to your account @ibrokhimov_2002 from a new device on Aug 21, 20023. Review it now",
            ),
          ],
        ),
      ),
    );
  }
}
