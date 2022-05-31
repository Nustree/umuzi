import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

/// Text widget styled with font style of Headline 1.
class HeadlineText1 extends StatelessWidget {
  final String text;
  final Color? textColor;

  /// if [textColor] is null then the default text color is applied.
  const HeadlineText1({Key? key, this.textColor, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headlineColor = textColor ?? Theme.of(context).colorScheme.primary;
    return BorderedText(
      strokeColor: Colors.black,
      strokeWidth: 2.0,
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline1?.copyWith(
          color: headlineColor,
        ),
      ),
    );
  }
}

/// Text widget with font style of Body 1.
class BodyText1 extends StatelessWidget {
  final String text;
  final Color? textColor;

  /// if [textColor] is null then the default text color is applied.
  const BodyText1({Key? key, this.textColor = const Color(0xFFE5BA05), required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyColor = textColor ?? Theme.of(context).colorScheme.onPrimary;

    return Text(
      text,
      style: Theme.of(context).textTheme.bodyText1?.copyWith(
        color: bodyColor
      ),
    );
  }
}