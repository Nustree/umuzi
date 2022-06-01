import 'dart:typed_data';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_place/google_place.dart';

/// A data provider that fetches data from the Google Places API.
/// It is automatically set to fetch data from Bulawayo, starting from the centre of Byo
/// and spreading with a radius of 20km.
class PlacesAPI {
  late GooglePlace _googlePlace;
  final Location _centerOfBulawayo = Location(lat: -20.147893, lng: 28.57025);
  final _radius = 20000;

  PlacesAPI() {
    final apiKey = dotenv.env['KEY'];
    _googlePlace = GooglePlace(apiKey!);
  }

  /// Retrieves a list of places of queried type from the Google Places API.
  ///
  /// [type] Required parameter - The type of place that the returned list of places should belong to.
  Future<NearBySearchResponse?> getPlacesOfType(String type) async =>
      await _googlePlace.search.getNearBySearch(_centerOfBulawayo, _radius);

  /// Retrieve detailed information about a place from the Google Places API.
  ///
  /// [placeId] Required parameter - The id of the place to be retrieved.
  Future<DetailsResponse?> getPlaceInDetail(String placeId) async =>
      await _googlePlace.details.get(placeId);

  /// Retrieve a photo as a [Uint8List] from the Google Places API.
  ///
  /// [photoReference] Required parameter - The reference of the photo, i.e. id, used to fetch the actual photo from the API.
  Future<Uint8List?> getPhotoOfPlace(String photoReference, int maxHeight, int maxWidth) async =>
      await _googlePlace.photos.get(photoReference, maxHeight, maxWidth);
}
