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
           
          ],
        ),

      ),
    
    );
  }
}
