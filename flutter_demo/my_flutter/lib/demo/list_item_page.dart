import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('瀑布流')),
        body: MasonryGridView.count(
            crossAxisCount: 4,
            itemCount: 100,
            itemBuilder: (context, index) {
              return GridTile(
                  header: Container(width: 10, height: 10, child: Text("头")),
                  child: Text("瀑布流<><><><><><<-$index"));
            }));
  }
}
