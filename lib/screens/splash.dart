import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram/componets/color.dart';
import 'package:instagram/widgets/bottom_navigaton_bar.dart';

class InstagramSplashScreen extends StatefulWidget {
  @override
  _InstagramSplashScreenState createState() => _InstagramSplashScreenState();
}

class _InstagramSplashScreenState extends State<InstagramSplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const InstagramBottomNavBar();
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(
              height: 150.0,
              width: 150.0,
              child: Image(
                image: AssetImage(
                  "assets/images/instagram2.png",
                ),
              ),
            ),
            SizedBox(
              height: 150.0,
              width: 250.0,
              child: Image(
                image: AssetImage(
                  "assets/images/instagram.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
