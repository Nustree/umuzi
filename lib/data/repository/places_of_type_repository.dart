import 'package:umuzi/data/model/util.dart';
import 'package:umuzi/data/repository/photo_repository.dart';
import '../model/place.dart';

class PlacesOfTypeRepository extends PhotoRepository{

  /// Retrieves places of a certain type, e.g. restaurant, shopping mall.
  ///
  /// [type] - The type of place that is being searched for.
  ///
  Future<List<Place>?> getPlacesOfType(String type) async {
    final response = await api.getPlacesOfType(type);
    final results = response?.results;
    return results?.map((result) => result.toPlace()).toList();
  }
}