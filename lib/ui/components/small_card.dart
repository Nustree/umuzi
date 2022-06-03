import 'package:flutter/material.dart';
import '../theme.dart';
import 'border.dart';

/// A small card used to represent items which need chips which are not clickable.
class SmallCard extends StatelessWidget {
  final Widget? child;
  /// Whether or not the card should have a stroke.
  final bool withStroke;
  const SmallCard({Key? key, required this.child, this.withStroke = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      decoration: BoxDecoration(
          border: withStroke ? smallContainerBorder(darkGreen) : null,
          borderRadius: withStroke ? const BorderRadius.all(smallContainerRadius) : null,
          color: Theme.of(context).colorScheme.primaryContainer),
      child: child
    );
  }
}
