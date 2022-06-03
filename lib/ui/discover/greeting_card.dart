import 'package:flutter/material.dart';
import 'package:umuzi/ui/components/border.dart';
import 'package:umuzi/ui/components/text.dart';

class GreetingCard extends StatelessWidget {
  const GreetingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 36),
      color: Colors.white,
      child: Container(
        width: MediaQuery.of(context).size.width /* Fill the entire width of the screen */,
        decoration: _containerBackground(context),
        child: Padding(
          padding: const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              HeadlineText("Linjani", headlineStyleNumber: 1,),
              BodyText("Explore the City of Kings and Queens", bodyStyleNumber: 1),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _containerBackground(BuildContext context) {
    return BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        border: mediumContainerBorder(Theme.of(context).colorScheme.onBackground),
    );
  }
}
