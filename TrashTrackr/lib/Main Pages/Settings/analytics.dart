import 'package:flutter/material.dart';

class Analytics extends StatefulWidget {
  @override
  _AnalyticsState createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics'), // Title of the app bar 
      ),
      body: Center(
        child: Text('Analytics Page'),
      ),
    );
  }
}