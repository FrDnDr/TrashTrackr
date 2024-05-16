import 'package:flutter/material.dart';
import 'package:trash_trackr/LoginandRegistration/login.dart';
import 'package:trash_trackr/Main%20Pages/Settings/privacy.dart';
import 'package:trash_trackr/Main%20Pages/Settings/account.dart';
import 'package:trash_trackr/Main%20Pages/Settings/analytics.dart';
import 'package:trash_trackr/Main%20Pages/Settings/support.dart';
import 'package:trash_trackr/Main%20Pages/Settings/notifications.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 151, 246, 174),
        title: Text('Settings'), // Title of the app bar
      ),
      body: ListView(
        children: <Widget>[
          _buildMenuItem(Icons.notifications, 'Notifications', Notifications()), // Notification menu item
          _buildMenuItem(Icons.bar_chart, 'Analytics', Analytics()), // Analytics menu item
          _buildMenuItem(Icons.account_circle, 'Account', Account()), // Account menu item
          _buildMenuItem(Icons.lock, 'Privacy', Privacy()), // Privacy menu item
          _buildMenuItem(Icons.help_outline, 'Support', Support()), // Support menu item
          _buildMenuItem(Icons.exit_to_app, 'Logout', LoginPage()), // Logout menu item
        ],
      ),
    );
  }

  // Helper method to create a menu item
  ListTile _buildMenuItem(IconData icon, String title, Widget page) {
    return ListTile(
      leading: Icon(icon), // Icon on the left side of the menu item
      title: Text(title), // Text of the menu item
      onTap: () {
        // Handle menu item tap
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}