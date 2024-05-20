// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

import 'first_main_page.dart';


class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  DiscoverPageState createState() => DiscoverPageState();
}

class DiscoverPageState extends State<DiscoverPage> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  final List<String> _images = [
    'assets/discover.png',
    'assets/discover2.jpg',
    'assets/discover3.jpg'
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async =>
            false, // Prevents the back button from navigating back
        child: Scaffold(
      
      body: Stack(
        children: [
              PageView.builder(
                controller: _pageController,
                itemCount: _images.length,
                physics:
                    const NeverScrollableScrollPhysics(), // Disables scrolling
                itemBuilder: (context, index) {
                  return Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset(
                        _images[index],
                        fit: BoxFit.cover,
                      ),
                      Container(
                        color: Colors.black.withOpacity(0.3),
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          //crossAxisAlignment: CrossAxisAlignment.stretch,
                          // crossAxisAlignment: CrossAxisAlignment.stretch,
                          // Centers the text widget
                          children: [
                            const Text(
                              'Enjoy your \nnew vacation \nexperience',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 34,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                                "Plan your vacation with all the \ndetails...",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                )),
                            const SizedBox(
                              height: 16,
                            ),
                            SwipeableButtonView(
                              buttonText: 'Swipe to explore now',
                              buttonWidget: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.grey,
                              ),
                              activeColor: Colors.transparent,
                              onWaitingProcess: () {
                                Get.to(() => const FirstMainPage());
                              },
                              onFinish: () {
                                Get.to(() => const FirstMainPage());
                              },
                            )
                          ]),
                    ],
                  );
                },
              ),
          Positioned(
            top: 50.0,
            left: 0.0,
            right: 0.0,
            child: Image.asset(
              'assets/white_logo.png',
              width: 100,
              height: 100,
            ),
          ),

          
        ],
      ),
        ));
  }
}
