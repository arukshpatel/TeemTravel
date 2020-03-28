import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:user_location/user_location.dart';

class MapDetail extends StatelessWidget {
  MapController mapController = MapController();
  UserLocationOptions userLocationOptions;

  List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    LatLng df = LatLng(56.704173, 11.543808);

    userLocationOptions = UserLocationOptions(
      context: context,
      mapController: mapController,
      markers: markers
    );


    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Latitude: \t' + df.latitude.toString() + '\n'
                + 'Longitude: \t' + df.longitude.toString()),
        backgroundColor: Colors.red,
      ),
      body: new FlutterMap(
        options: new MapOptions(
          minZoom: 10.0,
          center: df,
          swPanBoundary: LatLng(56.6877, 11.5089),
          nePanBoundary: LatLng(56.7378, 11.6644),
        ),
        layers: [
          new TileLayerOptions(
            tileProvider: AssetTileProvider(),
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a','b','c'],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Info'),
        backgroundColor: Colors.pinkAccent,
        icon: Icon(Icons.info),
        onPressed: () {},
      ),
    );
  }
}