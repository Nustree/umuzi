import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:umuzi/ui/discover/explore_list.dart';
import 'package:umuzi/ui/discover/umuzi_app_bar.dart';
class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return <Widget>[
          UmuziAppBar(
            searchPlaceholder: "I am looking for...",
            onSearchIconPressed: () {},
          ),
        ];
      },
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: ExploreList(),
      ),
    );
  }
}
