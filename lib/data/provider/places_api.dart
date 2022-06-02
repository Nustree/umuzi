import 'dart:typed_data';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_webservice/places.dart';

/// A data provider that fetches data from the Google Places API.
/// It is automatically set to fetch data from Bulawayo, starting from the centre of Byo
/// and spreading with a radius of 20km.
@protected
class PlacesAPI {
  late GoogleMapsPlaces _googlePlace;
  final Location _centerOfBulawayo = Location(lat: -20.147893, lng: 28.57025);
  final _radius = 20000;

  PlacesAPI() {
    final apiKey = dotenv.env['KEY'];
    _googlePlace = GoogleMapsPlaces(apiKey: apiKey);
  }

  /// Retrieves a list of places of queried type from the Google Places API.
  ///
  /// [type] Required parameter - The type of place that the returned list of places should belong to.
  Future<PlacesSearchResponse?> getPlacesOfType(String type) async =>
      await _googlePlace.searchNearbyWithRadius(_centerOfBulawayo, _radius, type: type);

  /// Retrieve detailed information about a place from the Google Places API.
  ///
  /// [placeId] Required parameter - The id of the place to be retrieved.
  Future<PlacesDetailsResponse?> getPlaceInDetail(String placeId) async =>
      await _googlePlace.getDetailsByPlaceId(placeId);

  /// Retrieve a photo as a [Uint8List] from the Google Places API.
  ///
  /// [photoReference] Required parameter - The reference of the photo, i.e. id, used to fetch the actual photo from the API.
  Future<String?> getPhotoUrlOfPlace(String photoReference, int maxHeight, int maxWidth) async =>
      _googlePlace.buildPhotoUrl(photoReference: photoReference, maxHeight: maxHeight, maxWidth: maxWidth);
}
