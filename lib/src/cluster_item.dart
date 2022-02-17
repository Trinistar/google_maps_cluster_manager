import 'package:google_maps_cluster_manager/google_maps_cluster_manager.dart';
import 'package:platform_maps_flutter/platform_maps_flutter.dart';

abstract class ClusterItem {
  LatLng get location;

  String? _geohash;
  String get geohash => _geohash ??=
      Geohash.encode(location, codeLength: ClusterManager.precision);
}
