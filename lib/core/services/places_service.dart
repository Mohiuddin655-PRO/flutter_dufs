import 'dart:developer';

import 'package:dufs/core/constants/api_info.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../common/responses/response.dart';
import '../models/place.dart';

class PlacesService {
  final key = ApiInfo.mapKEY;

  Future<Response<List<Place>>> places({
    required double lat,
    required double lng,
    BitmapDescriptor? icon,
  }) async {
    const response = Response<List<Place>>();
    try {
      return response.copyWith(result: Place.places);
    } on Exception catch (e) {
      log(e.toString());
      return response.copyWith(message: e.toString());
    }
  }
}
