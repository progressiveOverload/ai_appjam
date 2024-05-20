import 'package:ai_appjam/screens/calendar.dart';
import 'package:ai_appjam/screens/chatpage.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account.dart';
import 'first_main_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FloatingNavbar(
          onTap: (int val) {
            switch (val) {
              case 0:
                Get.to(const FirstMainPage());
                break;
              case 1:
                Get.to(const CalendarPage());
                break;
              case 2:
                Get.to(const ChatScreen());
                break;
              case 3:
                Get.to(const FavoritePage());
                break;
              case 4:
                Get.to(const AccountPage());
                break;
            }
          },
          currentIndex: 3,
          items: [
            FloatingNavbarItem(
              icon: Icons.home,
            ),
            FloatingNavbarItem(
              icon: Icons.calendar_month,
            ),
            FloatingNavbarItem(
              icon: Icons.location_on,
            ),
            FloatingNavbarItem(
              icon: Icons.favorite,
            ),
            FloatingNavbarItem(
              icon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }
}
