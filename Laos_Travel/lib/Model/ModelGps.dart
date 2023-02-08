import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ModelGps extends StatefulWidget {
  const ModelGps({super.key});

  @override
  State<ModelGps> createState() => _MyAppState();
}

class _MyAppState extends State<ModelGps> {
  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
        centerTitle: true,
      ),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
      ),
    );
  }
}
