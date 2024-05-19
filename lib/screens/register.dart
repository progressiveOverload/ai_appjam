import 'package:ai_appjam/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon.png',
              width: 200,
              height: 200,
            ),
            const Text(
              'A few steps',
              style: TextStyle(fontSize: 34.0),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                //  color: const Color(0xFFCCCCCC),
              ),
              child: Column(
                children: [
                  TextField(
                    style: const TextStyle(
                        // color: Color(0xFF8A8A8A),
                        ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Name',
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Color(0xFF376BFB)),
                      ),
                    ),
                    cursorColor: const Color(0xFF376BFB),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    style: const TextStyle(
                      color: Color(0xFF8A8A8A),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Email',
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Color(0xFF376BFB)),
                      ),
                    ),
                    cursorColor: const Color(0xFF376BFB),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    style: const TextStyle(
                      color: Color(0xFF8A8A8A),
                    ),
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Password',
                      border: InputBorder.none,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16.0),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: const BorderSide(color: Color(0xFF376BFB)),
                      ),
                    ),
                    cursorColor: const Color(0xFF376BFB),
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF0545FA)),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 21.0),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {
                          Get.to(() => const LoginPage());
                        },
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an account? ",
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
