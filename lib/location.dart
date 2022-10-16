import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';


class Location{
  Location({this.longitude ,this.latitude});
   double? longitude;
   double? latitude;

  Future<void> getPermissionThenLocation() async{
    LocationPermission permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
        latitude = position.latitude;
        longitude = position.longitude;
    } catch (e){
      print(e);
    }
  }
}




