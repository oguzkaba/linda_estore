import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:linda_wedding_ecommerce/core/init/lang/lang_manager.dart';

import '../../../../core/extansions/platform_detect_extension.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({super.key});
  static const CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  Completer<GoogleMapController> controller = Completer();

  static const CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: kGooglePlex,
            onMapCreated: (GoogleMapController gmController) {
              controller.complete(gmController);
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: const Text('To the lake!'),
        icon: const Icon(Icons.directions_boat),
      ),
    ));
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController gmController = await controller.future;
    gmController.animateCamera(CameraUpdate.newCameraPosition(kLake));
  }
}
