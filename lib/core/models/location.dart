class Location {
  final double lat;
  final double lng;

  Location(this.lat, this.lng);

  factory Location.from(Map<dynamic, dynamic> data) {
    final lat = data['lat'];
    final lng = data['lng'];
    return Location(lat, lng);
  }
}
