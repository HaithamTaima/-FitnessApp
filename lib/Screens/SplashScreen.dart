import 'package:final_gym/BottomNavigationBar.dart';
import 'package:final_gym/Screens/WelcomeScreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 3000),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF26273B),
      body: Center(
        child: Center(
          child: Image.asset(
            "images/Logo1.png",
          ),
        ),
      ),
    );
  }
}
