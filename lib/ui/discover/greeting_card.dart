import 'package:flutter/material.dart';
import 'package:umuzi/ui/components/text.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: MediaQuery.of(context).size.width,
      decoration: _containerBackground(context),
      child: Padding(
        padding: const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            HeadlineText1(text: "Linjani"),
            BodyText1(text: "Explore the City of Kings and Queens",),
          ],
        ),
      ),
    );
  }

  BoxDecoration _containerBackground(BuildContext context) {
    return BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        border: Border.all(width: 2.0));
  }
}
