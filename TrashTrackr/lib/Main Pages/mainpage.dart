import 'package:trash_trackr/Main%20Pages/report.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:trash_trackr/Main Pages/settings.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MapController _mapController = MapController();
  int _currentIndex = 0;

  void _zoomIn() {
    _mapController.move(_mapController.center, _mapController.zoom + 0.1);
  }

  void _zoomOut() {
    _mapController.move(_mapController.center, _mapController.zoom - 0.1);
  }

void _onItemTapped(int index) {
  setState(() {
    _currentIndex = index;
  });
  if (index == 0) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainPage()));
  } else if (index == 1) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => FractionallySizedBox(
        heightFactor: 0.75,
        child: ReportsPage(),
      ),
    );
  }
}

  @override
Widget build(BuildContext context) {
  return Scaffold(
    extendBodyBehindAppBar: true, // Ensure body is behind the app bar
    appBar: AppBar(
      backgroundColor: Colors.transparent, // Make app bar transparent
      elevation: 0, // Remove app bar shadow
      leading: Padding(
        padding: const EdgeInsets.all(8.0), // Adjust padding as needed
        child: IconButton(
          icon: const Icon(Icons.settings,
          color: Color.fromARGB(223, 21, 80, 0)),
          onPressed: () {
            // Navigate to the settings page
            showModalBottomSheet(
              context: context,
              builder: (context) => Settings(),
            );
          },
        ),
      ),
    ),
    body: Stack(
      children: [
        FlutterMap(
          mapController: _mapController,
          options: MapOptions(
            center: LatLng(13.6218, 123.19480),
            zoom: 14,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
          ],
        ),
        Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                onPressed: _zoomIn,
              ),
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: _zoomOut,
              ),
            ],
          ),
        ),
      ],
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.report),
          label: 'Report',
        ),
      ],
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
    ),
  );
}
}