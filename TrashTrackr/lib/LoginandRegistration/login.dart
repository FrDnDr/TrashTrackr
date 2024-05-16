// ignore_for_file: library_private_types_in_public_api

/*
Authored by: Francis Daniel B. Dreu
Company: Team Name
Project: TrashTrackr
Feature: [TRKR-100] Log in Screen
Description: Login Page for Trash Trackr
*/

// Importing necessary Flutter material package.
import 'package:flutter/material.dart';
import '../Main Pages/mainpage.dart';
import '../LoginandRegistration/register.dart';

// LoginPage is a StatefulWidget that creates an instance of _LoginPageState.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override 
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController __emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    setState(() {
      // Set loading state
    });

    // Simulate login process
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      // Reset loading state
    });

    // Show confirmation dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Login Successful'),
        content: Text('You have successfully logged in.'),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainPage()),
              );
            },
          ),
        ],
      ),
    );
  }

  void _forgotPassword() {
    // Implement forgot password functionality
    print('Forgot Password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(223, 160, 237, 132),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/logologin.png',
                      height: 100,
                    ),
                    SizedBox(height: 32),
                    TextField(
                      controller: __emailController,
                      decoration: InputDecoration(
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: const Color.fromARGB(137, 0, 0, 0)),
                        prefixIcon: Icon(Icons.email, color: const Color.fromARGB(255, 0, 0, 0)),
                        filled: true,
                        fillColor: Colors.white24,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: const Color.fromARGB(137, 0, 0, 0)),
                        prefixIcon: Icon(Icons.lock, color: const Color.fromARGB(255, 0, 0, 0)),
                        filled: true,
                        fillColor: Colors.white24,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: _forgotPassword,
                      child: const Text(
                        'Forgot Password?',
                          style:TextStyle(color: Colors.blue),
                      ),
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: _login,
                      child: Text('Log in'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF4CAF50),
                        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}