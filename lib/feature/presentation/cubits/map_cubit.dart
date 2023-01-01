import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/models/place.dart';
import '../../../core/services/geolocator_service.dart';
import '../../../core/services/places_service.dart';
import '../../../core/utils/states/cubit_state.dart';

class MapCubit extends Cubit<CubitState<dynamic>> {
  final PlacesService placesService;
  final GeoLocatorService geolocatorService;

  MapCubit({
    required this.geolocatorService,
    required this.placesService,
  }) : super(CubitState(
          isFirstLoading: false,
          isLoading: false,
          exception: '',
        ));

  Future<List<Place>> places({
    double? lat,
    double? lng,
    BitmapDescriptor? icon,
  }) async {
    emit(state.copyWith(isLoading: true));
    final response = await placesService.places(
      lat: lat ?? 23.810331,
      lng: lng ?? 90.412521,
      icon: icon,
    );
    if (response.isSuccessful) {
      emit(state.copyWith(data: response.result));
    } else {
      emit(state.copyWith(exception: response.message));
    }
    return response.result ?? [];
  }
}
