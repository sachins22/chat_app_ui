import 'package:flutter/material.dart';

class SplashPages extends StatefulWidget {
  const SplashPages({super.key});

  @override
  State<SplashPages> createState() => _SplashPagesState();
}

class _SplashPagesState extends State<SplashPages> {
  Future<void> _splashnext() async {
    Future.delayed( const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/images/splash.png', height: double.infinity,width: double.infinity, fit: BoxFit.cover,),
    );
  }
}
