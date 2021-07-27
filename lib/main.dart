import 'package:flutter/material.dart';
import 'package:subsmission_dicoding/pages/HomePage.dart';
import 'package:subsmission_dicoding/pages/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter subsmission",
      theme: ThemeData(
      ),
      home: OnboardingPage(),
    );
  }
}