import 'package:flutter/material.dart';

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
          _buildMenuItem(Icons.notifications, 'Notifications'), // Notification menu item
          _buildMenuItem(Icons.bar_chart, 'Analytics'), // Analytics menu item
          _buildMenuItem(Icons.account_circle, 'Account'), // Account menu item
          _buildMenuItem(Icons.lock, 'Privacy'), // Privacy menu item
          _buildMenuItem(Icons.help_outline, 'Support'), // Support menu item
          _buildMenuItem(Icons.exit_to_app, 'Logout'), // Logout menu item
        ],
      ),
    );
  }

  // Helper method to create a menu item
  ListTile _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon), // Icon on the left side of the menu item
      title: Text(title), // Text of the menu item
      onTap: () {
        // Handle menu item tap
        // Implement any logic you need when a menu item is tapped
      },
    );
  }
}