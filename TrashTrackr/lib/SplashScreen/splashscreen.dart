/*
Authored by: Francis Daniel B. Dreu
Company: Team Name
Project: TrashTrackr
Feature: [TRKR-104] Splash Screen
Description: Splash Screen for the Trash Trackr
*/
import 'package:flutter/material.dart';
import 'dart:async';
import '../LoginandRegistration/login.dart'; 


class SplashAndOnboarding extends StatefulWidget {
  @override
  _SplashAndOnboardingState createState() => _SplashAndOnboardingState();
}

class _SplashAndOnboardingState extends State<SplashAndOnboarding> {
  bool _showSplash = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      setState(() {
        _showSplash = false;
      });
    });
  }

  void _handleLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showSplash ? _buildSplashScreen() : _buildOnboardingScreen(),
    );
  }

Widget _buildSplashScreen() {
    return Container(
      color: const Color.fromARGB(223, 160, 237, 132),
      child: Center(
        child: Image.asset('assets/logo2.png'),
      ),
    );
  }

Widget _buildOnboardingScreen() {
  return Stack(
    children: <Widget>[
      Container(
        color: const Color.fromARGB(223, 160, 237, 132),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo2.png'),
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(milliseconds: 500),
              builder: (BuildContext context, double opacity, Widget? child) {
                return Opacity(
                  opacity: opacity,
                  child: Text(
                    'Never miss a pickup ever again',
                    style: TextStyle( fontFamily: 'OpenSans', fontSize: 24, fontWeight: FontWeight.bold,),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(milliseconds: 2000),
              builder: (BuildContext context, double opacity, Widget? child) {
                return Opacity(
                  opacity: opacity,
                  child: ElevatedButton(
                    onPressed: _handleLogin,
                    child: Text('Get Started'),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    ],
  );
}
}