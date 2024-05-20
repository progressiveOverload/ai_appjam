import 'package:ai_appjam/screens/chatpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstMainPage extends StatefulWidget {
  const FirstMainPage({super.key});

  @override
  State<FirstMainPage> createState() => _FirstMainPageState();
}

class _FirstMainPageState extends State<FirstMainPage> {
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
                Get.to(() => ChatScreen());
              },
              child: Image.asset('assets/ai_icon.png'),
            ),
          ),
        ],
      ),
    );
  }
}
