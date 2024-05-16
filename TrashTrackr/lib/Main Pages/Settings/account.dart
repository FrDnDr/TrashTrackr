import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Account'),
        centerTitle: true,
        backgroundColor: Colors.green[700],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: Color.fromARGB(223, 160, 237, 132),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text(
                  'Juan De la Cruz',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'juandelacruz@example.com',
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),
                ),
              ),
              
              ListTile(
                leading: Icon(Icons.email, color: Color.fromARGB(223, 160, 237, 132)),
                title: Text('Change Email Address'),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                onTap: () {
                  // Navigate to change email address page
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.lock, color: Color.fromARGB(223, 160, 237, 132)),
                title: Text('Change Password'),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
                onTap: () {
                  // Navigate to change password page
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}