import 'package:ai_appjam/screens/account.dart';
import 'package:ai_appjam/screens/calendar.dart';
import 'package:ai_appjam/screens/chatpage.dart';
import 'package:ai_appjam/screens/favorites.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstMainPage extends StatefulWidget {
  const FirstMainPage({super.key});

  @override
  State<FirstMainPage> createState() => _FirstMainPageState();
}

class _FirstMainPageState extends State<FirstMainPage> {
  bool isFavorite = false;
  final places = [
    {
      'image': 'assets/paris.png',
      'name': 'Eiffel Tower',
      'location': 'Paris, France',
      'rating': '4.5',
    },
    {
      'image': 'assets/Anıtkabir.png',
      'name': 'Anıtkabir',
      'location': 'Ankara, Turkey',
      'rating': '4.7',
    },
    {
      'image': 'assets/fountain.png',
      'name': 'Trevi Fountain',
      'location': 'Rome, Italy',
      'rating': '4.2',
    },
    {
      'image': 'assets/sea.png',
      'name': 'Beach',
      'location': 'Antalya, Turkey',
      'rating': '4.7',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for a location',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 50, // Set the height of the ListView
              child: ListView(
                scrollDirection: Axis.horizontal,
                itemExtent: MediaQuery.of(context).size.width / 3,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      avatar: const Icon(Icons.all_inclusive),
                      label: const Text('All'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      avatar: const Icon(Icons.museum),
                      label: const Text('Museum'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      avatar: const Icon(Icons.account_balance),
                      label: const Text('Culture'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      avatar: const Icon(Icons.nightlife),
                      label: const Text('Night Life'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      avatar: const Icon(Icons.fastfood),
                      label: const Text('Food & Drink'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      avatar: const Icon(Icons.nature_people),
                      label: const Text('Calming'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Popular Location'),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text('See All'),
                ),
              ],
            ),
            SizedBox(
              height: 250, // adjust as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (context, index) {
                  final place = places[index];
                  return Padding(
                    padding: EdgeInsets.zero,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // adjust width as needed
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.topRight,
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.15, // adjust as needed
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(place['image']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    icon: Icon(isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border),
                                    onPressed: () {
                                      setState(() {
                                        isFavorite = !isFavorite;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    place['name'].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(place['location'].toString()),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      const Icon(Icons.star,
                                          color: Colors.yellow),
                                      Text(place['rating'].toString()),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Recommendation'),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text('See All'),
                ),
              ],
            ),
            SizedBox(
              height: 250, // adjust as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: places.length,
                itemBuilder: (context, index) {
                  final place = places[index];
                  return Padding(
                    padding: EdgeInsets.zero,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width *
                          0.6, // adjust width as needed
                      child: Card(
                        child: Column(
                          children: <Widget>[
                            Stack(
                              alignment: Alignment.topRight,
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.15, // adjust as needed
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(place['image']!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                    icon: const Icon(Icons.favorite_border),
                                    onPressed: () {
                                      // Add your functionality here
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    place['name'].toString(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Text(place['location'].toString()),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      const Icon(Icons.star,
                                          color: Colors.yellow),
                                      Text(place['rating'].toString()),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
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
          currentIndex: 0,
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
      // bottomNavigationBar: ClipRRect(
      //   borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
      //   child: BottomNavigationBar(
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.calendar_today),
      //         label: 'Calendar',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.map),
      //         label: 'Map',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite),
      //         label: 'Favorites',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.account_circle),
      //         label: 'Account',
      //       ),
      //     ],
      //     onTap: (index) {
      //       switch (index) {
      //         case 0:
      //           Get.to(const FirstMainPage());
      //           break;
      //         case 1:
      //           Get.to(const CalendarPage());
      //           break;
      //         case 2:
      //           Get.to(const MapPage());
      //           break;
      //         case 3:
      //           Get.to(const FavoritePage());
      //           break;
      //         case 4:
      //           Get.to(const AccountPage());
      //           break;
      //       }
      //     },
      //   ),
      // ),
    );
  }
}
