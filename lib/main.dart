import 'package:flutter/material.dart';
import 'package:promptdiary/constants.dart';
import 'package:promptdiary/login.dart';
import 'package:promptdiary/onboarding_screen.dart';
import 'package:promptdiary/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange[600],
      ),
      initialRoute: '/onboarding',
      routes: {
        '/home': (context) => Scaffold(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
      },
    );
  }
}
