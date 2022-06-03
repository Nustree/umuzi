import 'package:flutter/material.dart';
import 'package:umuzi/ui/components/small_card.dart';
import 'package:umuzi/ui/components/text.dart';

/// Displays a rating for a place.
class RatingChip extends StatelessWidget {
  final double? rating;
  const RatingChip(this.rating, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmallCard(
      child: Row(
        children: [
          // Star icon
          Icon(
            Icons.star,
            color: Theme.of(context).colorScheme.secondary,
            size: 16,
          ),
          const SizedBox(width: 4,),
          SmallText(
            rating?.toStringAsFixed(1)
          )
        ],
      ),
    );
  }
}
