import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListItemView extends StatelessWidget {
  const ListItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('瀑布流')),
        body: Stack(alignment: Alignment.center, children: [
          MasonryGridView.count(
              crossAxisCount: 2,
              itemCount: 100,
              itemBuilder: (context, index) {
                return GridTile(child: Text("1瀑布流<><><><><><<-$index"));
              }),
          Container(
              alignment: Alignment.center,
              width: 150,
              height: 150,
              color: Colors.deepOrange,
              child: const Text("data"))
        ]));
  }
}
