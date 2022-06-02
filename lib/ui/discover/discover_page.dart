import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:umuzi/bloc/places_list/place_type.dart';
import 'package:umuzi/bloc/places_list/places_list_cubit.dart';
import 'package:umuzi/data/repository/places_repository.dart';

import 'greeting_card.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => PlacesRepository(),
      child: BlocProvider(
        create: (context) => PlacesListCubit(context.read<PlacesRepository>())..fetchPlaces(PlaceType.shopping),
        child: Container(
          color: Theme
              .of(context)
              .colorScheme
              .background,
          child: Column(
            children: <Widget>[
              const GreetingCard(),

              const SizedBox(height: 48,),

              BlocBuilder<PlacesListCubit, PlacesListState>(
                  builder: (context, state) {
                    if (state is PlacesListLoadSuccess) {
                      final smallList = state.places?.take(3).toList();
                      return ListView.builder(itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(smallList?[index].name ?? "No"),
                        );
                      });
                    } else if (state is PlacesListLoadFailure) {
                      return const Text("Failure");
                    } else {
                      return const CircularProgressIndicator();
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
