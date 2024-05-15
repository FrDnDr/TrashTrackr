/*
Authored by: Francis Daniel B. Dreu
Company: Team Name
Project: TrashTrackr
Feature: [TRKR-100] Log in Screen
Description: Login Page for Trash Trackr
*/

// Importing necessary Flutter material package.
import 'package:flutter/material.dart';

// LoginPage is a StatefulWidget that creates an instance of _LoginPageState.
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

// _LoginPageState is the state for LoginPage that manages the login logic and UI.
class _LoginPageState extends State<LoginPage> {
  // TextEditingControllers to control the text fields for phone/email and password.
  final TextEditingController _phoneEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  
  // Boolean value to track if the app is currently loading or not.
  bool _isLoading = false;

  // Asynchronous function to handle user login.
  void _login() async {
    // Setting loading to true to show a loading indicator.
    setState(() {
      _isLoading = true;
    });

    // Simulating a login process with a 2-second delay.
    await Future.delayed(Duration(seconds: 2));

    // Setting loading to false to hide the loading indicator.
    setState(() {
      _isLoading = false;
    });

    // Showing a confirmation dialog upon successful login.
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Login Successful'),
        content: Text('You have successfully logged in.'),
        actions: <Widget>[
          // Button to close the dialog.
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  // Building the UI for the login page.
  @override
  Widget build(BuildContext context) {
    // If loading, show CircularProgressIndicator, else show the login form.
    return Scaffold(
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Text field for phone number/email input.
                  TextFormField(
                    controller: _phoneEmailController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number/Email',
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16.0),
                  // Text field for password input.
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 24.0),
                  // Login button that triggers the _login function.
                  ElevatedButton(
                    onPressed: _login,
                    child: Text('Login'),
                  ),
                  // Button for users who forgot their password.
                  TextButton(
                    onPressed: () {
                      // Placeholder for forgot password feature implementation.
                    },
                    child: Text('Forgot Password?'),
                  ),
                ],
              ),
            ),
    );
  }
}

