import 'package:flutter/material.dart';
import 'package:messanger_app/repository/screens/onboarding/onbaordingScreen.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  Future<void> _splashnext() async {
    Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>const Onbaordingscreens()));
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
