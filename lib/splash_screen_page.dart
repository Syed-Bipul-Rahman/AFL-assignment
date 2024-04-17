import 'package:flutter/material.dart';
import 'package:nagad_clone/nagad_home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //navigate based homepage after 3 seconds
    navigateHomepage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "images/nagad_logo.png",
          height: 200,
        ),
      ),
    );
  }

  void navigateHomepage() {
    //navigate to home page after 2 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const NagadHomeScreen()));
    });
  }
}
