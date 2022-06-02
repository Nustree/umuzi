import 'package:google_maps_webservice/places.dart';
import 'package:umuzi/data/model/location.dart' as domain;
import 'package:umuzi/data/model/place.dart';
import 'package:umuzi/data/model/price_level.dart' as domain;
import 'package:umuzi/data/model/review.dart' as domain;

extension SearchResultExtension on PlacesSearchResult {
  /// Map a [SearchResult] to a [Place].
  Place toPlace() {
    return Place(
        placeId: placeId,
        name: name,
        priceLevel: fromLevel(priceLevel),
        address: formattedAddress,
        rating: rating?.toDouble(),
        photoReference: (photos.isNotEmpty) ? photos.first.photoReference : null);
  }
}

extension DetailsResultExtension on PlaceDetails {
  /// Map a [DetailsResult] to a [DetailedPlace].
  DetailedPlace toDetailedPlace() {
    return DetailedPlace(
        apiId: id,
        name: name,
        priceLevel: fromLevel(priceLevel!),
        address: formattedAddress,
        phoneNumber: formattedPhoneNumber,
        photos: photos.map((photo) => photo.photoReference).toList(),
        rating: rating?.toDouble(),
        reviews: reviews.map((review) => review.toDomainReview()).toList(),
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
        latitude: location.lat,
        longitude: location.lng);
  }
}

/// Map an integer level for the price level of a place to a [PriceLevel] enum.
domain.PriceLevel fromLevel(PriceLevel? level) {

  if (level == null) {
    return domain.PriceLevel.none;
  }

  switch (level) {
    case PriceLevel.free:
      return domain.PriceLevel.free;
    case PriceLevel.inexpensive:
      return domain.PriceLevel.inexpensive;
    case PriceLevel.moderate:
      return domain.PriceLevel.moderate;
    case PriceLevel.expensive:
      return domain.PriceLevel.expensive;
    case PriceLevel.veryExpensive:
      return domain.PriceLevel.veryExpensive;
    default:
      return domain.PriceLevel.none;
  }
}