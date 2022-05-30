import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

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
          children: <Widget>[
            ..._greetingText(context)
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

  List<Widget> _greetingText(BuildContext context) {
    return <Widget>[
      BorderedText(
          strokeColor: Colors.black,
          strokeWidth: 2.0,
          child: Text(
            "Linjani!",
            style: Theme.of(context).textTheme.headline1,
          )),
      Text(
        "Explore the City of Kings and Queens",
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
          color: Colors.white
        ),
      )
    ];
  }
}
