import 'package:umuzi/data/model/location.dart';
import 'package:umuzi/data/model/price_level.dart';
import 'package:umuzi/data/model/review.dart';

class Place {
  final String? apiId;
  final String? name;
  final PriceLevel? priceLevel;
  final String? address;
  double rating;
  final String? photoUrl;

  Place({required this.apiId, required this.name, required this.priceLevel, required this.address, required this.rating,
    required this.photoUrl});
}

class DetailedPlace {
  final String? apiId;
  final String? name;
  final PriceLevel? priceLevel;
  final String? address;
  final String? phoneNumber;
  final String[] photos;
  double rating;
  int totalUserRatings;
  final String[] types;
  final String website;
  final Review[] reviews;
  final Location location;

  DetailedPlace({required this.apiId, required this.name, required this.priceLevel, required this.address,
    required this.phoneNumber, required this.String, this.rating, this.totalUserRatings,
      this.website, this.Review, this.location});


}