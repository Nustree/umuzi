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

}