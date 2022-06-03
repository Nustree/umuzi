import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:umuzi/data/model/place.dart';
import 'package:umuzi/data/model/price_level.dart';
import 'package:umuzi/ui/components/text.dart';
import 'package:umuzi/ui/discover/place_card.dart';

const _dummyPlace = Place(
    placeId: "placeId",
    name: "Holiday Inn",
    priceLevel: PriceLevel.none,
    address: "Minerton Drive",
    rating: 4.2,
    photoReference: "photoReference");

class ExploreList extends StatelessWidget {
  const ExploreList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverMasonryGrid(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return const PlaceCard(place: _dummyPlace);
          },
          childCount: 20,
        ),
      ),
    ]);
  }
}
