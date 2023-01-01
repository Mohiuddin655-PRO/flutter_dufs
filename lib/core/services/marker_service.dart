import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../models/place.dart';
import 'dart:ui' as ui;
import 'dart:ui';


class MarkerService {
  Future<List<Marker>> getMarkers(List<Place> places) async {
    var markers = <Marker>[];

    final icon = await loadNetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png');
    final ui.Codec markerIcon = await ui.instantiateImageCodec(
      icon.buffer.asUint8List(),
      targetHeight: 75,
      targetWidth: 75,
    );
    final ui.FrameInfo frameInfo = await markerIcon.getNextFrame();
    final ByteData? byteData = await frameInfo.image.toByteData(
      format: ui.ImageByteFormat.png,
    );
    final Uint8List resizedImageMarker = byteData!.buffer.asUint8List();
    for (var place in places) {
      Marker marker = Marker(
        markerId: MarkerId(place.name),
        draggable: false,
        icon: BitmapDescriptor.fromBytes(resizedImageMarker),
        infoWindow: InfoWindow(
          title: place.name,
          snippet: place.vicinity,
        ),
        position: LatLng(
          place.geometry.location.lat,
          place.geometry.location.lng,
        ),
      );
      markers.add(marker);
    }

    return markers;
  }

  Future<Uint8List> loadNetworkImage(String path) async {
    final completer = Completer<ImageInfo>();
    var image = NetworkImage(path);
    image
        .resolve(
      const ImageConfiguration(),
    )
        .addListener(
      ImageStreamListener(
            (image, _) {
          completer.complete(image);
        },
      ),
    );

    final imageInfo = await completer.future;
    final byteData = await imageInfo.image.toByteData(
        format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }
}
