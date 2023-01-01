import 'location.dart';

class Geometry {
  final Location location;

  Geometry({
    required this.location,
  });

  factory Geometry.from(Map<dynamic, dynamic> data) {
    final location = Location.from(data['location']);
    return Geometry(location: location);
  }
}
