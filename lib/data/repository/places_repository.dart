import 'dart:typed_data';

import 'package:umuzi/data/model/util.dart';
import 'package:umuzi/data/provider/places_api.dart';
import '../model/place.dart';

class PlacesRepository {
  late PlacesAPI _api;

  PlacesRepository() {
    _api = PlacesAPI();
  }

  /// Retrieves places of a certain type, e.g. restaurant, shopping mall.
  ///
  /// [type] - The type of place that is being searched for.
  ///
  Future<List<Place>?> getPlacesOfType(String type) async {
    final response = await _api.getPlacesOfType(type);
    final results = response?.results;
    return results?.map((result) => result.toPlace()).toList();
  }

  /// Get in-depth information about a certain place.
  ///
  /// [placeId] Required parameter - The id of the place to be queried.
  Future<DetailedPlace?> getPlaceInDetail(String placeId) async {
    final response = await _api.getPlaceInDetail(placeId);
    final result = response?.result;
    return result?.toDetailedPlace();
  }

  /// Retrieve the photo of an associated place as a [Uint8List].
  ///
  /// [photoReference] Required parameter - The reference to the actual photo.
  ///
  /// [maxHeight] Required parameter - The maximum height of the photo.
  ///
  /// [maxWidth] Required parameter - The maximum width of the photo.
  Future<Uint8List?> getPhotoOfPlace(String photoReference, int maxHeight, int maxWidth) async =>
    await _api.getPhotoOfPlace(photoReference, maxHeight, maxWidth);
}