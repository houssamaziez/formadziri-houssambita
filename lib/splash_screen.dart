import 'dart:async';
import 'package:flutter/material.dart';
import 'package:formadziri/pages/intro_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const IntroPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 1000),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6D8A6B),
      body: AnimatedOpacity(
        duration: const Duration(seconds: 2),
        opacity: 1,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Image.asset("images/login_logo.png"),
          ),
        ),
      ),
    );
  }
}
