import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:platform_maps_flutter/platform_maps_flutter.dart';

class Place with ClusterItem {
  final String name;
  final bool isClosed;
  final LatLng latLng;

  Place({required this.name, required this.latLng, this.isClosed = false});

  @override
  String toString() {
    return 'Place $name (closed : $isClosed)';
  }

  @override
  LatLng get location => latLng;
}
