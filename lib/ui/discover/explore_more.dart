import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umuzi/ui/components/border.dart';
import 'package:umuzi/ui/components/rating_card.dart';
import 'package:umuzi/ui/components/text.dart';
import 'package:umuzi/ui/theme.dart';

class ExploreMoreSection extends StatelessWidget {
  const ExploreMoreSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final containerWidth = MediaQuery.of(context).size.width;
    return Container(
      width: containerWidth / 2.2,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          border: mediumContainerBorder(Colors.black),
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.all(mediumContainerRadius())),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/place_photo_example.jpg',
            fit: BoxFit.cover,
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Place name
                const BodyText(
                  text: "Holiday Inn",
                  bodyStyleNumber: 1,
                  textColor: darkGreen,
                  highEmphasis: true,
                ),
                // Place address
                const BodyText(
                  text: "Minerton Drive",
                  bodyStyleNumber: 2,
                  textColor: darkGreen,
                ),

                const SizedBox(height: 16,),

                // Rating
                Row(
                  children: const [
                    RatingCard(rating: 4.2),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
