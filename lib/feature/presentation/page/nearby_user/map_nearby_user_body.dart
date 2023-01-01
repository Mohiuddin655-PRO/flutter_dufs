import 'dart:async';

import 'package:dufs/core/services/google_map_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/models/place.dart';
import '../../../../core/services/marker_service.dart';
import '../../../../core/utils/states/cubit_state.dart';
import '../../../../dependency_injection.dart';
import '../../cubits/map_cubit.dart';

class MapNearbyUserBody extends StatefulWidget {
  const MapNearbyUserBody({Key? key}) : super(key: key);

  @override
  State<MapNearbyUserBody> createState() => _MapNearbyUserBodyState();
}

class _MapNearbyUserBodyState extends State<MapNearbyUserBody> {
  late var cubit = context.read<MapCubit>();
  final markerService = locator<MarkerService>();
  final _completer = Completer<GoogleMapController>();
  final _position = CameraPosition(target: GoogleMapService.initialLatLng);
  late GoogleMapController _controller;

  @override
  Widget build(BuildContext context) {
    GoogleMapService.requestPermission;
    return FutureBuilder(
        future: GoogleMapService.checkPermission,
        builder: (context, snapshot) {
          return BlocBuilder<MapCubit, CubitState>(builder: (context, state) {
            final places =
                state.data != null ? state.data as List<Place> : <Place>[];
            return FutureBuilder(
                future: markerService.getMarkers(places),
                builder: (context, markerSnapshot) {
                  final markers = markerSnapshot.data ?? [];
                  return GoogleMap(
                    mapType: MapType.normal,
                    myLocationButtonEnabled: true,
                    myLocationEnabled: true,
                    zoomControlsEnabled: true,
                    zoomGesturesEnabled: true,
                    initialCameraPosition: _position,
                    markers: Set<Marker>.of(markers),
                    onMapCreated: (controller) {
                      _completer.complete(controller);
                      _controller = controller;
                      _locatePosition;
                    },
                  );
                });
          });
        });
  }

  get _locatePosition async {
    final cameraUpdate = await GoogleMapService.cameraUpdate;
    _controller.animateCamera(cameraUpdate);
  }
}
