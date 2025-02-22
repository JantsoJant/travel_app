import 'package:flutter/material.dart';

import 'onboard-1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // Delay for 3 seconds and then navigate to OnboardingScreen
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D6EFD),
      body: Center(
        child: Text("Travenor",
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontFamily: "Geometr415 Blk BT",
            fontWeight: FontWeight.w400,
            height: 42 / 34,
            letterSpacing: 0,
          ),
        ),
      ),
    );
  }
}
