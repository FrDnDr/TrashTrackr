import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MapController _mapController = MapController();
  bool _isZoomingIn = false;
  bool _isZoomingOut = false;

  void _zoomIn() {
    if (_isZoomingIn) {
      _mapController.move(_mapController.center, _mapController.zoom + 0.1);
      Future.delayed(Duration(milliseconds: 100), _zoomIn);
    }
  }

  void _zoomOut() {
    if (_isZoomingOut) {
      _mapController.move(_mapController.center, _mapController.zoom - 0.1);
      Future.delayed(Duration(milliseconds: 100), _zoomOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            top: 10.0,
            right: 10.0,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  child: Icon(Icons.zoom_in),
                  onLongPress: () {
                    setState(() {
                      _isZoomingIn = true;
                    });
                    _zoomIn();
                  },
                  onLongPressEnd: (details) {
                    setState(() {
                      _isZoomingIn = false;
                    });
                  },
                ),
                GestureDetector(
                  child: Icon(Icons.zoom_out),
                  onLongPress: () {
                    setState(() {
                      _isZoomingOut = true;
                    });
                    _zoomOut();
                  },
                  onLongPressEnd: (details) {
                    setState(() {
                      _isZoomingOut = false;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
