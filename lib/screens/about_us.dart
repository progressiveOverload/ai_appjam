import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account.dart';
import 'calendar.dart';
import 'favorites.dart';
import 'first_main_page.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About Us'),
      ),
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20.0), // Add SizedBox before email address
             
              const Divider(color: Colors.grey),
              ListTile(
                onTap: () {},
                title: const Text('KVKK'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
              const Divider(color: Colors.grey),
              ListTile(
                onTap: () {},
                title: const Text('Terms of use'),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ), // Add Divider after email address
              // Add more user information here
            ],
          ),
        ),
      ),
    );
  }
}
