import 'package:flutter/material.dart';

class AniListPage extends StatefulWidget {
  const AniListPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AniListPageState();
}

class AniListPageState extends State<AniListPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('动画列表')),
      body: SafeArea(
          child: Column(children: [
        Expanded(child: list()),
        TextButton(
            onPressed: () {
              data.add("${data.length + 1}");
              listKey.currentState!.insertItem(data.length - 1);
            },
            child: const Text('添加'))
      ])));

  var data = ["1", "2", "3"];
  final listKey = GlobalKey<AnimatedListState>();

  Widget list() {
    return AnimatedList(
        key: listKey,
        initialItemCount: data.length,
        itemBuilder: (ctx, index, animation) {
          // return buildItem(index);
          return FadeTransition(
            opacity: animation,
            child: buildItem(index),
          );
        });
  }

  buildItem(index) => Column(children: [
        ListTile(
            key: ValueKey(data[index]),
            title:
                Text(data[index], style: const TextStyle(color: Colors.black)),
            trailing: IconButton(
                onPressed: () => onDelete(index),
                icon: const Icon(Icons.delete))),
        if (index < data.length) const Divider(color: Colors.grey)
      ]);

  onDelete(index) {
    listKey.currentState!.removeItem(index, (context, animation) {
      var item = buildItem(index);
      data.removeAt(index);
      return FadeTransition(
          child: SizeTransition(
              sizeFactor: animation, axisAlignment: 0, child: item),
          opacity: CurvedAnimation(
              parent: animation, curve: const Interval(0.5, 1.0)));
    }, duration: const Duration(milliseconds: 200));
  }
}
