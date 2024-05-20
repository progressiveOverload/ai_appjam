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
    Timer.periodic(const Duration(seconds: 15), (Timer timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 1050),
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
    bool isFinished = false;
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
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.2),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.1),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  
                                  SwipeableButtonView(
                                    buttonText: 'Swipe to explore now',
                                    buttonWidget: const Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.grey,
                                    ),
                                    activeColor: Colors.transparent,
                                    isFinished: isFinished,
                                    onWaitingProcess: () {
                                      Future.delayed(const Duration(seconds: 2),
                                          () {
                                        Get.to(() => const FirstMainPage());
                                      });
                                    },
                                    onFinish: () async {
                                      Get.to(() => const FirstMainPage());
                                      // await Navigator.push(
                                      //     context,
                                      //     PageTransition(
                                      //         type: PageTransitionType.fade,
                                      //         child: const FirstMainPage()));

                                      // setState(() {
                                      //   isFinished = false;
                                      // });
                                    },
                                  ),
                                ],
                              ),
                            ),
          
                            
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
