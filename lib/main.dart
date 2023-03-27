import 'package:flutter/material.dart';
import 'package:promptdiary/Helpers/screen_router.dart';
import 'package:promptdiary/constants.dart';
import 'package:promptdiary/screens/home.dart';
import 'package:promptdiary/screens/login.dart';
import 'package:promptdiary/screens/onboarding_screen.dart';
import 'package:promptdiary/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/home': (context) => ScreenRouter(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
      },
    );
  }
}
