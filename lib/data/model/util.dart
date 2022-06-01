import 'package:google_place/google_place.dart';
import 'package:umuzi/data/model/location.dart' as domain;
import 'package:umuzi/data/model/place.dart';
import 'package:umuzi/data/model/price_level.dart';
import 'package:umuzi/data/model/review.dart' as domain;

extension SearchResultExtension on SearchResult {
  /// Map a [SearchResult] to a [Place].
  Place toPlace() {
    return Place(
        apiId: id,
        name: name,
        priceLevel: fromLevel(priceLevel),
        address: formattedAddress,
        rating: rating,
        photoUrl: photos?.first.photoReference);
  }
}

extension DetailsResultExtension on DetailsResult {
  /// Map a [DetailsResult] to a [DetailedPlace].
  DetailedPlace toDetailedPlace() {
    return DetailedPlace(
        apiId: id,
        name: name,
        priceLevel: fromLevel(priceLevel),
        address: formattedAddress,
        phoneNumber: formattedPhoneNumber,
        photos: photos?.map((photo) => photo.photoReference).toList(),
        rating: rating,
        totalUserRatings: userRatingsTotal,
        reviews: reviews?.map((review) => review.toDomainReview()).toList(),
        location: geometry?.toDomainLocation(),
        types: types);
  }
}

extension ReviewExtension on Review {
  /// Map a [Review] fetched from a data provider to a [domain.Review].
  domain.Review toDomainReview() {
    return domain.Review(
        author: authorName,
        relativeTime: relativeTimeDescription,
        profilePhotoUrl: profilePhotoUrl,
        text: text);
  }
}

extension GeometryExtension on Geometry {
  /// Map the location data of a [Geometry] object to a [domain.Location].
  domain.Location toDomainLocation() {
    return domain.Location(
        latitude: location?.lat,
        longitude: location?.lng);
  }
}

/// Map an integer level for the price level of a place to a [PriceLevel] enum.
PriceLevel fromLevel(int? level) {
  switch (level) {
    case 0:
      return PriceLevel.free;
    case 1:
      return PriceLevel.inexpensive;
    case 2:
      return PriceLevel.moderate;
    case 3:
      return PriceLevel.expensive;
    case 4:
      return PriceLevel.veryExpensive;
    default:
      return PriceLevel.free;
  }
}