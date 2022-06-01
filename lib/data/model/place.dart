import 'package:umuzi/data/model/location.dart';
import 'package:umuzi/data/model/price_level.dart';
import 'package:umuzi/data/model/review.dart';

/// This is the shortened version of a [DetailedPlace].
/// It may be used to give an overview of a place be it as part of a greater collection of similar places,
/// Or as a quick summary.
class Place {
  final String? apiId;
  final String? name;
  final PriceLevel? priceLevel;
  final String? address;
  double? rating;
  final String? photoUrl;

  Place({required this.apiId, required this.name, required this.priceLevel, required this.address, required this.rating,
    required this.photoUrl});
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
  int? totalUserRatings;
  final List<String>? types;
  final String? website;
  final List<Review>? reviews;
  final Location? location;

  DetailedPlace({required this.apiId, required this.name, required this.priceLevel, required this.address,
    required this.phoneNumber, required this.photos, required this.rating, required this.totalUserRatings,
      this.website, required this.reviews, required this.location, required this.types});
}