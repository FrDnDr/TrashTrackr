import 'package:flutter/material.dart';
import '../LoginandRegistration/login.dart';
import '/theme/theme.dart';// Import the theme file

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ],
      ),
    );
  }
  

  @override
@override
Widget build(BuildContext context) {
  
  
  return Theme(
    
    data: getLoginTheme(),
    child: Scaffold(
      backgroundColor: Color.fromARGB(223, 160, 237, 132),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Container(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Image.asset(
                        'assets/logologin.png',
                        height: 100, // Adjust the height as needed
                      ),
                    ),
                    SizedBox(height: 32),
                  _buildInputField(
                    controller: _phoneEmailController,
                    labelText: 'Email Address',
                    icon: Icons.person,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 16),
                  _buildInputField(
                    controller: _passwordController,
                    labelText: 'Password',
                    icon: Icons.lock,
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  _buildInputField(
                    controller: _confirmPasswordController,
                    labelText: 'Confirm Password',
                    icon: Icons.lock,
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
    ),
  );
}

Widget _buildInputField({
  required TextEditingController controller,
  required String labelText,
  required IconData icon,
  TextInputType keyboardType = TextInputType.text,
  bool obscureText = false,
}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: labelText,
      prefixIcon: Icon(icon),
    ),
    keyboardType: keyboardType,
    obscureText: obscureText,
  );
}
}