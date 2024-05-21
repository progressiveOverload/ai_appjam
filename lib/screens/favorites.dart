import 'package:ai_appjam/screens/calendar.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account.dart';
import 'chatpage.dart';
import 'first_main_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover interesting places'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Get.to(() => const ChatScreen());
              },
              child: Image.asset('assets/ai_icon.png'),
            ),
          ),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: SafeArea(
        child: FloatingNavbar(
          onTap: (int val) {
            switch (val) {
              case 0:
                Get.offAll(() => const FirstMainPage());
                break;
              case 1:
                Get.offAll(() => const CalendarPage());
                break;
              case 2:
                //Get.offAll(() => const ChatScreen());
                break;
              case 3:
                Get.offAll(() => const FavoritePage());
                break;
              case 4:
                Get.offAll(() => const AccountPage());
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
        body: const Center(child: Text("Coming soon!")));
  }
}


class FavoritesController extends GetxController {
  var favorites = <Map<String, dynamic>>[].obs;

  void addFavorite(Map<String, dynamic> place) {
    if (!favorites.contains(place)) {
      favorites.add(place);
    }
  }

  void removeFavorite(Map<String, dynamic> place) {
    if (favorites.contains(place)) {
      favorites.remove(place);
    }
  }
}
