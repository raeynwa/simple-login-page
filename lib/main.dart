import 'package:flutter/material.dart';
import 'package:login_page_1/colors/colors.dart';
import 'package:login_page_1/text/large_text.dart';
import 'package:login_page_1/text/medium_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 100, left: 30),
              child: AppLargeText(text: "Welcome back!"),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: AppMediumText(text: "Login to continue..."),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("images/login.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.email),
                    hintText: "Input Email",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.lock),
                    hintText: "Input Password",
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: AppColors.mainColor,
                  padding: EdgeInsets.symmetric(
                    horizontal: 140,
                    vertical: 10,
                  ),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: Center(
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate back to first route when tapped.
                  },
                  child: const Text('Go back!'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
