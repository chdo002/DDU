import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zhihu/pages/hot_page/hot_list_vm.dart';
// import 'package:zhihu/pages/question/question_page.dart';
import '../../models/index.dart';
import '../questoin_web/QuestoinWebPage.dart';

class HotListPage extends StatelessWidget {
  const HotListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('热门列表'),
        ),
        body: ChangeNotifierProvider(
            create: (context) => HotListVM()..requestData(),
            builder: (context, child) {
              return ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    var data = context.read<HotListVM>().itemData[index];
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) =>
                                      QuestionWebPage(itemData: data)));
                        },
                        child: HotItem(
                          itemData: data,
                          index: index,
                        ));
                  },
                  separatorBuilder: (c, i) => const Divider(),
                  itemCount: context.watch<HotListVM>().itemData.length);
            }));
  }
}

class HotItem extends StatelessWidget {
  final Hot_list_feed_item itemData;
  final int index;

  const HotItem({Key? key, required this.itemData, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = itemData.children.first["thumbnail"];
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            // 序号
            "${index + 1}",
            style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 215, 188, 32)),
          ),
          Expanded(
              // 标题
              child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 15),
                  child: Text(
                    itemData.target.title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ))),
          if (url.isNotEmpty)
            SizedBox(
              width: 80,
              height: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: NetworkImage(itemData.children.first["thumbnail"]),
                  fit: BoxFit.cover,
                ),
              ),
            )
        ]));
  }
}
