import 'package:ai_appjam/screens/calendar.dart';
import 'package:ai_appjam/screens/favorites.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first_main_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
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
          currentIndex: 4,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              // width: 200,
              child: ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.person),
                ),
                title: const Text('Profile Settings '),
              ),
            ),
          ),
          const Divider(),
          // SizedBox(
          //   height: 8,
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              // width: 200,
              child: ListTile(
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.language),
                ),
                title: const Text('Language'),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              //width: 200,
              child: ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.settings),
                ),
                title: const Text('Settings'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              // width: 200,
              child: ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.help),
                ),
                title: const Text('Help'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              //width: 200,
              child: ListTile(
                onTap: () {},
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(Icons.logout),
                ),
                title: const Text('Logout'),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
