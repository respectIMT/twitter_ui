// ignore_for_file: unused_field, unused_element, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:twitter_ui/drawer/drawer_profile.dart';
import 'package:twitter_ui/home_page/home_page.dart';
import 'package:twitter_ui/massages_page/message_page.dart';
import 'package:twitter_ui/notification_page/notification_page.dart';
import 'package:twitter_ui/search_page/search_page.dart';
import 'drawer/drawer_extra.dart';
import 'drawer/drawer_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    SearchPage(),
    NotificationPage(),
    MessagePage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          width: 260.w,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                drawer_profile(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  child: Column(
                    children: [
                      drawer_list(
                          text: "Profile", icon: "assets/icons/user.png"),
                      drawer_list(
                          text: "Verified", icon: "assets/icons/verify.png"),
                      drawer_list(
                          text: "Lists", icon: "assets/icons/lists.png"),
                      drawer_list(
                          text: "Bookmarks", icon: "assets/icons/bookmark.png"),
                      drawer_list(
                          text: "Communities",
                          icon: "assets/icons/friends.png"),
                      drawer_list(
                          text: "Monetization", icon: "assets/icons/money.png")
                    ],
                  ),
                ),
                Container(
                  color: Colors.grey,
                  height: 0.5.h,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      drawer_extra(
                        image: 'assets/icons/down.png',
                        text: 'Creator studio',
                      ),
                      drawer_extra(
                        image: 'assets/icons/down.png',
                        text: 'Professional tools',
                      ),
                      drawer_extra(
                        image: 'assets/icons/down.png',
                        text: 'Settings ans Supports',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: pages[currentPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          onTap: (int index) {
            currentPage = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                activeIcon: Image.asset(
                  "assets/navigator/home_off.png",
                  height: 22.h,
                ),
                icon: Image.asset(
                  "assets/navigator/home.png",
                  height: 22.h,
                ),
                backgroundColor: Colors.white,
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Image.asset("assets/navigator/search_off.png",
                    height: 22.h),
                icon: Image.asset(
                  "assets/navigator/s.png",
                  height: 22.h,
                ),
                backgroundColor: Colors.white,
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Image.asset("assets/navigator/notification_off.png",
                    height: 22.h),
                icon: Image.asset(
                  "assets/navigator/notification.png",
                  height: 22.h,
                ),
                backgroundColor: Colors.white,
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Image.asset("assets/navigator/message_off.png",
                    height: 22.h),
                icon: Image.asset(
                  "assets/navigator/message.png",
                  height: 22.h,
                ),
                backgroundColor: Colors.white,
                label: ""),
          ],
        ),
      ),
    );
  }
}
