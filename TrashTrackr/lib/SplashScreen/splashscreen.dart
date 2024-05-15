/*
Authored by: Francis Daniel B. Dreu
Company: Team Name
Project: TrashTrackr
Feature: [TRKR-104] Splash Screen
Description: Splash Screen for the Trash Trackr
*/
import 'package:flutter/material.dart';
import 'dart:async';
import 'onboarding.dart'; // Add this line

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => Onboarding()), // Replace with your widget
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(223, 160, 237, 132),
        child: Center(
          child: Image.asset('assets/logo2.png'), // Replace with your logo asset name
        ),
      ),
    );
  }
}