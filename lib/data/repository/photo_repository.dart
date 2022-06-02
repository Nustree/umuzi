import 'package:umuzi/data/repository/api_repository.dart';

/// A repository that fetches photos of a place.
class PhotoRepository extends ApiRepository{
  /// Retrieve the photo url of an associated place.
  ///
  /// [photoReference] Required parameter - The reference to the actual photo.
  ///
  /// [maxHeight] Required parameter - The maximum height of the photo.
  ///
  /// [maxWidth] Required parameter - The maximum width of the photo.
  Future<String?> getPhotoOfPlace(String photoReference, int maxHeight, int maxWidth) async =>
      await api.getPhotoUrlOfPlace(photoReference, maxHeight, maxWidth);
}