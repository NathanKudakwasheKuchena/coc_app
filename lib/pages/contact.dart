import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {

  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng (-20.164951, 28.5829563);
  final Set<Marker> _markers = {};
  LatLng _lastMapPosition = _center;
  MapType _currentMapType = MapType.normal;

  _onMapCreated (GoogleMapController controller){
    _controller.complete(controller);
  }

  _onCameraMove (CameraPosition position){
    _lastMapPosition = position.target;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff00c2cb),
        child: SafeArea(child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 400,
                  width: 400,
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                        zoom: 18.0,
                        target: _center
                    ),
                    mapType: _currentMapType,
                    markers: _markers,
                    onCameraMove: _onCameraMove,
                  ),
                ),
                SizedBox(height: 7.5),
                Text(
                  "You are welcome to... \n Visit us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DidactGothic",
                    fontSize: 25.0,
                    color: Color(0xff00c2cb),
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Address: 144 CNR George Silundika/15th Avenue, Central Business District, Bulawayo",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DidactGothic",
                    fontSize: 18.0,
                    color: Colors.grey[650],
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Call us",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DidactGothic",
                    fontSize: 25.0,
                    color: Color(0xff00c2cb),
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  "+263 775 454 595",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DidactGothic",
                    fontSize: 18.0,
                    color: Colors.grey[650],
                  ),
                ),
                Text(
                  "Catch us on Social Media",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "DidactGothic",
                    fontSize: 25.0,
                    color: Color(0xff00c2cb),
                  ),
                ),
              ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}
