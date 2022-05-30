import 'package:flutter/material.dart';

class ChipGroup extends StatefulWidget {
  const ChipGroup({Key? key}) : super(key: key);

  @override
  State<ChipGroup> createState() => _ChipGroupState();
}

class _ChipGroupState extends State<ChipGroup> {
  final categoriesMap = const [
    Category('Accommodation', Icons.hotel_outlined),
    Category('Eatery', Icons.fastfood_outlined),
    Category('Landmark', Icons.landscape_outlined),
    Category('Shopping mall', Icons.local_mall_outlined)
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class Category {
  final String categoryLabel;
  final IconData icon;

  const Category(this.categoryLabel, this.icon);
}
