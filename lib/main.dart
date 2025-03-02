import 'package:flutter/material.dart';
import 'package:travel_app/favourite_page.dart';
import 'package:travel_app/home_page.dart';
import 'package:travel_app/onboard-1.dart';
import 'package:travel_app/popular_page.dart';
import 'package:travel_app/schedule_page.dart';
import 'package:travel_app/sign_in.dart';
import 'package:travel_app/sign_up.dart';
import 'package:travel_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      home: const SchedulePageScreen(),

    );
  }
}

