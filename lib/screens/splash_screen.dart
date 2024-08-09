import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:education_app_ui/Screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/splash_bg3.jpg', // Replace with your background image path
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        AnimatedSplashScreen(
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Logo_sman_1_mande.png',
                width: 200,
              ),
              const Text(
                'SMA NEGERI 1 MANDE CIANJUR',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          splashIconSize: 800,
          splashTransition: SplashTransition.fadeTransition,
          duration: 2000,
          backgroundColor:
              Colors.transparent, // Set background color to transparent
          nextScreen: const WelcomeScreen(),
        ),
      ],
    );
  }
}
