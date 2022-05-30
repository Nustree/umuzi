import 'package:flutter/material.dart';
import 'package:umuzi/discover/header/greeting_card.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: Column(
        children: const <Widget>[
          GreetingCard()
        ],
      ),
    );
  }
}
