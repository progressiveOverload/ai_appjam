import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      onPressed: () {}, icon: Image.asset("assets/gh.png")),
                  // IconButton(
                  //   icon: Image.asset('tw.png'),
                  //   onPressed: () {
                  //     // Handle the Facebook button press
                  //   },
                  // ),
                  // IconButton(
                  //   icon: Image.asset('fb.png'),
                  //   onPressed: () {
                  //     // Handle the Twitter button press
                  //   },
                  // ),
                  // IconButton(
                  //   icon: Image.asset('ig.png'),
                  //   onPressed: () {
                  //     // Handle the Instagram button press
                  //   },
                  // ),
                  // IconButton(
                  //   icon: Image.asset('gh.png'),
                  //   onPressed: () {
                  //     // Handle the LinkedIn button press
                  //   },
                  // ),
                  // IconButton(
                  //   icon: Image.asset('in.png'),
                  //   onPressed: () {
                  //     // Handle the GitHub button press
                  //   },
                  // ),
                  // IconButton(
                  //   icon: Image.asset('md.png'),
                  //   onPressed: () {
                  //     // Handle the GitHub button press
                  //   },
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
