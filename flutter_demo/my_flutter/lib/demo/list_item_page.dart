import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:random_color/random_color.dart';

class ListItemView extends StatefulWidget {
  const ListItemView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ListItemViewState();
  }
}

typedef _ItemStructBuilder = Widget Function();

class _ItemStruct {
  final String title;
  final _ItemStructBuilder builder;

  _ItemStruct({required this.title, required this.builder});
}

class Tile extends StatelessWidget {
  final int index;
  final double extent;

  const Tile({Key? key, this.index = 1, this.extent = double.infinity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: extent,
        height: extent,
        alignment: Alignment.center,
        child: Text("$index"),
        color:
            RandomColor().randomColor(colorBrightness: ColorBrightness.light));
  }
}

class ListItemViewState extends State<ListItemView>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  late var list = [
    _ItemStruct(title: 'StaggeredGrid', builder: buildStaggeredGrid),
    _ItemStruct(title: 'buildMasonryGrid', builder: buildMasonryGrid),
    _ItemStruct(title: 'buildQuilted', builder: buildQuilted),
    _ItemStruct(title: 'buildWoven', builder: buildWoven),
  ];

  Widget buildStaggeredGrid() {
    return StaggeredGrid.count(
        axisDirection: AxisDirection.down,
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: const [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Tile(index: 1),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Tile(index: 2),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(index: 3),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Tile(index: 4),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Tile(index: 5),
          )
        ]);
  }

  Widget buildMasonryGrid() {
    return MasonryGridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemBuilder: (context, index) {
        return Tile(index: index, extent: (index % 5 + 1) * 100);
      },
    );
  }

  Widget buildQuilted() {
    return GridView.custom(
      gridDelegate: SliverQuiltedGridDelegate(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        repeatPattern: QuiltedGridRepeatPattern.inverted,
        pattern: const [
          QuiltedGridTile(3, 2),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 1),
          QuiltedGridTile(1, 2),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) => Tile(index: index),
        childCount: 14
      ),
    );
  }

  Widget buildWoven() {
    return GridView.custom(
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        pattern: [
          const WovenGridTile(1),
          const WovenGridTile(
            5 / 7,
            crossAxisRatio: 0.9,
            alignment: AlignmentDirectional.centerEnd,
          ),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
            (context, index) => Tile(index: index),
      ),
    );
  }

  @override
  void initState() {
    _controller = TabController(length: list.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('瀑布流'),
            bottom: TabBar(
                controller: _controller,
                tabs: list.map((e) => Tab(text: e.title)).toList())),
        body: TabBarView(
            controller: _controller,
            children: list.map((e) => e.builder()).toList()));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
