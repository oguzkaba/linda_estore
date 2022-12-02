import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/constants/app/colors_constants.dart';
import '../../../../core/constants/app/geo_coordinat_constants.dart';
import '../../model/account_model.dart';

class TrackOrder extends StatefulWidget {
  final AccountModel accountModel;
  const TrackOrder({super.key, required this.accountModel});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  Completer<GoogleMapController> controller = Completer();

  static const CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962), zoom: 14);
  final Set<Polygon> polygon = {};
  final List<LatLng> point = [];

  @override
  void initState() {
    addPoints();
    List<Polygon> addPolygon = [
      Polygon(
        polygonId: const PolygonId('KOCAELI'),
        points: point,
        consumeTapEvents: true,
        strokeColor: ColorConstants.primaryColor,
        strokeWidth: 1,
        fillColor: ColorConstants.secondaryColor.withOpacity(.3),
      ),
    ];
    polygon.addAll(addPolygon);

    super.initState();
  }

  void addPoints() {
    for (var i = 0; i < GeoCoordinat.coordinats.length; i++) {
      var ltlng =
          LatLng(GeoCoordinat.coordinats[i][1], GeoCoordinat.coordinats[i][0]);
      point.add(ltlng);
    }
  }

  @override
  Widget build(BuildContext context) {
    const CameraPosition myLocation = CameraPosition(
        //*Since the data from the backend service is indian ocean
        // target: LatLng(widget.accountModel.address!.geolocation!.lat!.toDouble,
        //     widget.accountModel.address!.geolocation!.long!.toDouble),
        target: LatLng(40.76533008618506, 29.941418165970003),
        zoom: 10);

    return SafeArea(
        child: Scaffold(
      body: GoogleMap(
        polygons: polygon,
        markers: <Marker>{
          Marker(markerId: const MarkerId('1'), position: myLocation.target)
        },
        mapType: MapType.normal,
        initialCameraPosition: kGooglePlex,
        onMapCreated: (gmController) {
          controller.complete(gmController);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (() async => _goToTheLake(myLocation)),
        label: const Text('My Location'),
        icon: const Icon(Icons.location_on),
      ),
    ));
  }

  Future<void> _goToTheLake(CameraPosition newCameraPosition) async {
    final GoogleMapController gmController = await controller.future;
    gmController
        .animateCamera(CameraUpdate.newCameraPosition(newCameraPosition));
  }
}
