import 'package:ai_appjam/screens/about_us.dart';
import 'package:ai_appjam/screens/calendar.dart';
import 'package:ai_appjam/screens/favorites.dart';
import 'package:ai_appjam/screens/help_page.dart';
import 'package:ai_appjam/screens/language.dart';
import 'package:ai_appjam/screens/login.dart';
import 'package:ai_appjam/screens/my_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
                onTap: () {
                  Get.to(() => const MyProfileScreen());
                },
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
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
                onTap: () {
                  Get.to(() => const LanguagePage());
                },
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.language,
                    color: Colors.blue,
                  ),
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
                onTap: () {
                  Get.to(() => const AboutUsPage());
                },
                leading: CircleAvatar(
                  radius: 30,
                  child:
                      Image.asset('assets/ai_icon.png', width: 24, height: 24),
                ),
                title: const Text('About Us'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
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
                onTap: () {
                  Get.to(() => const HelpPage());
                },
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.help,
                    color: Colors.blue,
                  ),
                ),
                title: const Text('Help Center'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
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
                onTap: () {
                  Get.defaultDialog(
                    title: 'Logout',
                    middleText: 'Are you sure you want to logout?',
                    textCancel: 'Cancel',
                    textConfirm: 'Yes',
                    onCancel: () {},
                    onConfirm: () async {
                      await FirebaseAuth.instance.signOut();
                      Get.offAll(() => const LoginPage());
                    },
                  );
                },
                leading: const CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.logout,
                    color: Colors.red,
                  ),
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
