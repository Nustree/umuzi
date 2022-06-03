import 'package:flutter/material.dart';
import 'package:umuzi/data/model/price_level.dart';
import 'package:umuzi/data/model/util.dart';
import 'package:umuzi/ui/components/small_card.dart';
import 'package:umuzi/ui/components/text.dart';

class PriceLevelChip extends StatelessWidget {
  final PriceLevel? priceLevel;
  const PriceLevelChip(this.priceLevel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmallCard(
      child: SmallText(
        priceLevel?.toDescription(),
        highEmphasis: true,
      )
    );
  }
}
