import 'package:umuzi/data/model/location.dart';
import 'package:umuzi/data/model/price_level.dart';
import 'package:umuzi/data/model/review.dart';

/// This is the shortened version of a [DetailedPlace].
/// It may be used to give an overview of a place be it as part of a greater collection of similar places,
/// Or as a quick summary.
class Place {
  final String? placeId;
  final String? name;
  final PriceLevel? priceLevel;
  final String? address;
  double? rating;
  final String? photoReference;

  Place({required this.placeId, required this.name, required this.priceLevel, required this.address, required this.rating,
    required this.photoReference});
}

/// Contains in-depth information about a place in the real world.
class DetailedPlace {
  final String? apiId;
  final String? name;
  final PriceLevel? priceLevel;
  final String? address;
  final String? phoneNumber;
  final List<String?>? photos;
  double? rating;
  final List<String>? types;
  final String? website;
  final List<Review>? reviews;
  final Location? location;

  DetailedPlace({required this.apiId, required this.name, required this.priceLevel, required this.address,
    required this.phoneNumber, required this.photos, required this.rating,
      this.website, required this.reviews, required this.location, required this.types});
}