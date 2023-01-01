import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class GoogleMapService {
  static double _latitude = 23.78215100681559, _longitude = 90.41607608465783;
  static bool isLocationEnabled = false;

  static LatLng get initialLatLng => LatLng(latitude, longitude);

  static double get latitude => _latitude;

  static double get longitude => _longitude;

  static Future<LatLng> get latLng async {
    return LatLng(latitude, longitude);
  }

  static Future<Position> get position async {
    final current = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    _latitude = current.latitude;
    _longitude = current.longitude;
    return current;
  }

  static Future<bool> get locationEnabled async {
    isLocationEnabled = await Geolocator.isLocationServiceEnabled();
    return isLocationEnabled;
  }

  static Future<LocationPermission> get checkPermission async =>
      await Geolocator.checkPermission();

  static Future<LocationPermission> get requestPermission async =>
      await Geolocator.requestPermission();

  static Future<CameraPosition> get cameraPosition async =>
      CameraPosition(target: await latLng, zoom: 14);

  static Future<CameraUpdate> get cameraUpdate async =>
      CameraUpdate.newCameraPosition(await cameraPosition);

  static Future<PermissionStatus> requestLP() async =>
      await Permission.location.request();
}
