import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umuzi/ui/components/border.dart';
import 'package:umuzi/ui/theme.dart';

/// Displays a rating for a place.
class RatingCard extends StatelessWidget {
  final double rating;
  const RatingCard({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      decoration: BoxDecoration(
        border: smallContainerBorder(darkGreen),
        borderRadius: BorderRadius.all(smallContainerRadius()),
        color: Theme.of(context).colorScheme.primaryContainer
      ),
      child: Row(
        children: [
          // Star icon
          Icon(
            Icons.star,
            color: Theme.of(context).colorScheme.secondary,
            size: 16,
          ),
          const SizedBox(width: 4,),
          DefaultTextStyle(
            style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: darkGreen,
                )
            ),
            child: Text(
              rating.toStringAsFixed(1),
            ),
          )
        ],
      ),
    );
  }
}
