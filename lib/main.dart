import 'package:flutter/material.dart';
import 'package:login_signup/resources/colors.dart';
import 'package:login_signup/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Login/Signup',
      theme: ThemeData(
        primaryColor: AppColors.kPrimary,
        scaffoldBackgroundColor: AppColors.kWhite,
      ),
      home: const WelcomeScreen(),
    );
  }
}
