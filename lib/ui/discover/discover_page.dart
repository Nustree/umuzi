import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umuzi/bloc/places_list/place_type.dart';
import 'package:umuzi/bloc/places_list/places_of_type_cubit.dart';
import 'package:umuzi/data/repository/places_of_type_repository.dart';
import 'package:umuzi/ui/discover/explore_more.dart';

import 'greeting_card.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme
          .of(context)
          .colorScheme
          .background,
      child: Column(
        children: const <Widget>[
          GreetingCard(),
          SizedBox(height: 48,),
          ExploreMoreSection()
        ],
      ),
    );
  }
}
