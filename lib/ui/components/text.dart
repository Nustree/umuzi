import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

/// Text widget which is styled using any Headline style.
class HeadlineText extends StatelessWidget {
  final String text;
  final Color? textColor;

  /// The headline style number that should be used, e.g. Headline 1 or Headline 2.
  ///
  /// Supports only from Headline 1 to 6, other integers will be defaulted to Headline 6.
  final int headlineStyleNumber;

  /// if [textColor] is null then the default text color is applied.
  const HeadlineText({Key? key, required this.text, required this.headlineStyleNumber, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // If no text color is provided use the secondary color.
    final headlineColor = textColor ?? Theme.of(context).colorScheme.secondary;

    // Which headline style to use.
    final TextStyle headlineStyle;
    switch (headlineStyleNumber) {
      case 1: {
        headlineStyle = Theme.of(context).textTheme.headline1!;
        break;
      }
      case 2: {
        headlineStyle = Theme.of(context).textTheme.headline2!;
        break;
      }
      case 3: {
        headlineStyle = Theme.of(context).textTheme.headline3!;
        break;
      }
      case 4: {
        headlineStyle = Theme.of(context).textTheme.headline4!;
        break;
      }
      case 5: {
        headlineStyle = Theme.of(context).textTheme.headline5!;
        break;
      }
      case 6: {
        headlineStyle = Theme.of(context).textTheme.headline6!;
        break;
      }
      default: {
        headlineStyle = Theme.of(context).textTheme.headline6!;
        break;
      }
    }

    return BorderedText(
      strokeColor: Colors.black,
      strokeWidth: 2.0,
      child: Text(
        text,
        style: headlineStyle.copyWith(
          color: headlineColor,
        ),
      ),
    );
  }
}

/// Text widget which is styled using any Body style.
class BodyText extends StatelessWidget {
  final String text;
  final Color? textColor;
  /// Whether to embolden the text so as to highlight it.
  final bool highEmphasis;

  /// The body style number that should be used, e.g. BodyText1.
  ///
  /// Supports only from BodyText1 and BodyText2, other integers will be defaulted to BodyText2.
  final int bodyStyleNumber;

  /// if [textColor] is null then the default text color is applied.
  const BodyText({Key? key, this.textColor, required this.text, required this.bodyStyleNumber, this.highEmphasis = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyColor = textColor ?? Theme.of(context).colorScheme.onPrimary;

    final TextStyle bodyStyle;

    // Which body style to use.
    switch (bodyStyleNumber) {
      case 1: {
        bodyStyle = Theme.of(context).textTheme.bodyText1!;
        break;
      }
      case 2: {
        bodyStyle = Theme.of(context).textTheme.bodyText2!;
        break;
      }
      default: {
        bodyStyle = Theme.of(context).textTheme.bodyText2!;
        break;
      }
    }

    return Text(
      text,
      style: bodyStyle.copyWith(
        color: bodyColor,
        fontWeight: highEmphasis ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}