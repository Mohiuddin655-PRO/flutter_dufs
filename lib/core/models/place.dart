import 'package:dufs/core/models/location.dart';
import 'package:dufs/core/random_provider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'geometry.dart';

class Place {
  final String name;
  final double? rating;
  final int? ratingCount;
  final String? vicinity;
  final Geometry geometry;
  final BitmapDescriptor icon;

  Place({
    required this.geometry,
    required this.name,
    this.rating,
    this.ratingCount,
    this.vicinity,
    this.icon = BitmapDescriptor.defaultMarker,
  });

  factory Place.from(
    Map<dynamic, dynamic> map,
    BitmapDescriptor icon,
  ) {
    final name = map['name'];
    final r = map['rating'];
    final rating = (r ?? 0).toDouble();
    final rc = map['user_ratings_total'];
    final ratingCount = (rc ?? 0).toInt();
    final vicinity = map['vicinity'];
    final geometry = Geometry.from(map['geometry']);
    return Place(
      geometry: geometry,
      name: name,
      rating: rating,
      ratingCount: ratingCount,
      vicinity: vicinity,
      icon: icon,
    );
  }

  static List<Place> get places {
    final List<Place> list = [];
    for (int index = 0; index < 20; index++) {
      int randomIndex = RandomProvider.getRandomInt(5);
      String suffixlat = RandomProvider.getRandomString("123456789", 3);
      String suffixlng = RandomProvider.getRandomString("123456789", 3);
      var lat = double.parse("23.$suffixlat");
      var lng = double.parse("90.$suffixlng");
      list.add(
        Place(
          name: names[randomIndex],
          geometry: Geometry(
            location: Location(lat, lng),
          ),
        ),
      );
    }
    return list;
  }

  static List<String> get names => [
    "Mohammad Monir Hossain",
    "Mohammad Yashin Ali Khan",
    "Mohammad Mojibur Rahman",
    "Md. Shafayet Hossain",
    "Fahim Ahmed",
    "Tanya Sultana",
    "Chowdhury Rasedunnabi(shrizon)",
    "Mohammad Habibur Rahman",
    "Mahmuda Khanam",
  ];
}
