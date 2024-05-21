import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account.dart';
import 'calendar.dart';
import 'favorites.dart';
import 'first_main_page.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  LanguagePageState createState() => LanguagePageState();
}

class LanguagePageState extends State<LanguagePage> {
  String _selectedLanguage = 'English';

  void _changeLanguage(String value) {
    setState(() {
      _selectedLanguage = value;
    });
    String message = _selectedLanguage == 'English'
        ? 'Language changed to English'
        : 'Dil Türkçe olarak değiştirildi';

    Locale locale = _selectedLanguage == 'English'
        ? const Locale('en', 'US')
        : const Locale('tr', 'TR');

    Get.updateLocale(locale);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );

    // Here you can call your function to change the app language
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Language'),
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
              const Divider(
                  color: Colors.grey), // Add Divider before email address
              RadioListTile<String>(
                title: const Text('English'),
                value: 'English',
                groupValue: _selectedLanguage,
                onChanged: (String? value) => _changeLanguage(value!),
              ),
              RadioListTile<String>(
                title: const Text('Turkish'),
                value: 'Turkish',
                groupValue: _selectedLanguage,
                onChanged: (String? value) => _changeLanguage(value!),
              ),
              const Divider(
                  color: Colors.grey), // Add Divider after email address
              // Add more user information here
            ],
          ),
        ),
      ),
    );
  }
}
