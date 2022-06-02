part of 'places_list_cubit.dart';

abstract class PlacesListState extends Equatable{
  const PlacesListState();
}

class PlacesListInitial extends PlacesListState {
  @override
  // TODO: implement props
  List<Object?> get props => throw [];
}

/// The state when a request for the data has been made.
class PlacesListLoadInProgress extends PlacesListState {
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

/// The state when the list of places has been fetched successfully.
class PlacesListLoadSuccess extends PlacesListState {
  final List<Place>? places;
  const PlacesListLoadSuccess(this.places);

  @override
  // TODO: implement props
  List<Object?> get props => [places];
}

/// The state when an error occurs within fetch the list of places.
class PlacesListLoadFailure extends PlacesListState {
  final String errorMessage;
  const PlacesListLoadFailure(this.errorMessage);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
