import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:umuzi/bloc/places_list/place_type.dart';
import 'package:umuzi/data/repository/places_repository.dart';

import '../../data/model/place.dart';

part 'places_list_state.dart';

/// Facilitates retrieving a list of [Place].
///
/// Consists of four states:
///
/// - [PlacesListInitial]
///
/// - [PlacesListLoadInProgress]
///
/// - [PlacesListLoadSuccess]
///
/// - [PlacesListLoadFailure]
class PlacesListCubit extends Cubit<PlacesListState> {
  /// Repository to fetch data about places.
  final PlacesRepository _repository;

  PlacesListCubit(this._repository) : super(PlacesListInitial());

  /// Attempts to retrieve the list of places.
  ///
  /// [type] Required parameter - The type of place to query for.
  void fetchPlaces(PlaceType type) async {
    // Indicate that the data is being fetched.
    emit(PlacesListLoadInProgress());

    // Fetch the places from the repository.
    final places = await _repository.getPlacesOfType(type.name);

    if (kDebugMode) print(places);

    // Only load data when the list is not empty, else emit failure state.
    if (places != null) {
      emit(PlacesListLoadSuccess(places));
    } else {
      emit(const PlacesListLoadFailure("Error occurred whilst trying to fetch data."));
    }
  }
}
