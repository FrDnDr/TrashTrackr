import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Account'),
      ),
      body: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Juan De la Cruz'),
            accountEmail: Text('juandelacruz@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'J',
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Change Phone Number'),
            onTap: () {
              // Navigate to change phone number page
            },
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text('Change Email Address'),
            onTap: () {
              // Navigate to change email address page
            },
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text('Change Password'),
            onTap: () {
              // Navigate to change password page
            },
          ),
        ],
      ),
    );
  }
}