import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/border.dart';
import '../theme.dart';
import 'greeting_card.dart';

class UmuziAppBar extends StatelessWidget {
  final Function()? onSearchIconPressed;
  final String? searchPlaceholder;
  const UmuziAppBar({Key? key, required this.onSearchIconPressed, this.searchPlaceholder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(
          height: 72,
          padding: const EdgeInsets.only(left: 16, top: 4, right: 16, bottom: 8),
          child: CupertinoTextField(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: const BorderRadius.all(mediumContainerRadius),
                border: smallContainerBorder(
                    Theme.of(context).colorScheme.onBackground)),
            placeholder: searchPlaceholder,
            placeholderStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontWeight: FontWeight.w400,
              color: lowEmphasisGreen,
            ),
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
              fontWeight: FontWeight.w600,
              color: darkGreen,
            ),
            suffix: IconButton(
                onPressed: onSearchIconPressed,
                iconSize: 24,
                icon: const Icon(
                  Icons.search,
                  color: darkGreen,
                )),
          ),
        ),
      ),
      expandedHeight: 180,
      collapsedHeight: 72,
      flexibleSpace: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return const FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            background: GreetingCard(),
          );
        },
      ),
    );
  }
}
