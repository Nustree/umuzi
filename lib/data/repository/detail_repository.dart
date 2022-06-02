import 'package:umuzi/data/repository/photo_repository.dart';
import '../model/place.dart';
import '../model/util.dart';

class DetailRepository extends PhotoRepository {
  /// Get in-depth information about a certain place.
  ///
  /// [placeId] Required parameter - The id of the place to be queried.
  Future<DetailedPlace?> getPlaceInDetail(String placeId) async {
    final response = await api.getPlaceInDetail(placeId);
    final result = response?.result;
    return result?.toDetailedPlace();
  }
}