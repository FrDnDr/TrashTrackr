import 'package:flutter/material.dart';
import 'package:trashtrackr_registration/screens/welcomescreen.dart';
// import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      // theme: lightmode,
      home: const WelcomeScreen(),
    );
  }
}