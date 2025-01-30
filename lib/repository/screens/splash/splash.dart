import 'package:flutter/material.dart';
import 'package:messanger_app/repository/screens/onboarding/onbaordingScreen.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  // Method to handle the navigation after the splash screen delay
  Future<void> _splashnext() async {
    await Future.delayed(const Duration(seconds: 3)); // Await the delay
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const Onbaordingscreens()), // Navigate after delay
    );
  }

  @override
  void initState() {
    super.initState();
    _splashnext(); // Call the splashnext function when the screen is loaded
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/splash.png',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
