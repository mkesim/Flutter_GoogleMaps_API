// main.dart
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bike GPS',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bike GPS'),
      ),
      body: GoogleMap(
        markers: _markers,
        polylines: _polylines,
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7833, -122.4167),
          zoom: 15,
        ),
        onMapCreated: (GoogleMapController controller) {
          // TODO: Save the controller for later use.
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // TODO: Get the user's current location and calculate their route.

          // Add a marker at the user's current location and a polyline for their route.
          setState(() {
            _markers.add(Marker(
              markerId: MarkerId("currentLocation"),
              position: LatLng(37.7833, -122.4167), // TODO: Replace with the user's current location.
            ));

            _polylines.add(Polyline(
              polylineId: PolylineId("route"),
              points: [LatLng(37.7833, -122.4167)], // TODO: Replace with the user's route.
              color: Colors.red,
              width: 5,
            ));
          });
        },
        child: Icon(Icons.directions_bike),
      ),
    );
  }
}
