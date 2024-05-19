
import 'package:ai_appjam/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  bool _rememberMe = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
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
              'Welcome',
              style: TextStyle(fontSize: 34.0),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFFCCCCCC), // Change color here
              ),
              child: TextField(
                controller: _emailController,
                style: const TextStyle(
                    color: Color(0xFF8A8A8A)), // Change text color here
                decoration: InputDecoration(
                  fillColor: Colors.white, // Change inside color here
                  filled: true,
                  labelText: 'Email',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF376BFB)),
                  ),
                ),
                cursorColor: const Color(0xFF376BFB),
              ),
),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xFFCCCCCC), // Change color here
              ),
              child: TextField(
                controller: _passwordController,
                style: const TextStyle(color: Color(0xFF8A8A8A)),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Password',
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFF376BFB)),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
                obscureText: _isObscure,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (bool? value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                    ),
                    const Text('Remember me!'),
                  ],
                ),
              ],
            ),
           
            const SizedBox(height: 16.0),
            Column(
              children: [
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
                const SizedBox(height: 8.0),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/g_logo.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'Login with Google',
                          style: TextStyle(
                              color: Color(0xFF808080), fontSize: 21.0),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        Get.to(() => const RegisterPage());
                      },
                      child: RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Don't have an account? ",
                              style: TextStyle(color: Color(0xFF808080)),
                            ),
                            TextSpan(
                              text: 'Register',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    )
                  
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Color(0xFF808080)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
