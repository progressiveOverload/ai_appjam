import 'dart:async';
import 'package:flutter/material.dart';

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
    'assets/discover2.png',
    'assets/discover3.png'
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
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return Image.asset(
                _images[index],
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
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
    );
  }
}
