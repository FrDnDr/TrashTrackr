/*
Authored by: Francis Daniel B. Dreu
Company: Team Name
Project: TrashTrackr
Feature: [TRKR-101] Registration Screen
Description: Sign Up Page for Trash Trackr
*/
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _phoneEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _isLoading = false;

  void _register() async {
    setState(() {
      _isLoading = true;
    });

    // Simulate a registration process
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _isLoading = false;
    });

    // Show a confirmation dialog
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Registration Successful'),
        content: Text('You have successfully registered.'),
        actions: <Widget>[
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _phoneEmailController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number/Email',
                      prefixIcon: Icon(Icons.person),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: _register,
                    child: Text('Register'),
                  ),
                ],
              ),
            ),
    );
  }
}
