import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/index.dart';
import 'question_page_vm.dart';

// 回答页
class QuestionPage extends StatelessWidget {
  final Hot_list_feed_item itemData;
  const QuestionPage({Key? key, required final this.itemData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(itemData.target.title)),
        body: ChangeNotifierProvider(
            create: (context) => QuestionPageVM()..requestData(itemData),
            builder: (context, child) {
              return ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return _QuestoinTitleWidget(itemData: itemData);
                    } else if (index == 1) {
                      return _QuestoinExcerptWidget(itemData: itemData);
                    } else {
                      return _QuestionItem(
                          itemData: context
                              .read<QuestionPageVM>()
                              .questionData
                              .data[index - 2]);
                    }
                  },
                  separatorBuilder: (c, i) => const Divider(
                        height: 10,
                        color: Color.fromARGB(20, 130, 130, 130),
                        thickness: 10,
                      ),
                  itemCount: context.watch<QuestionPageVM>().nums);
            }));
  }
}

// 标题
class _QuestoinTitleWidget extends StatelessWidget {
  final Hot_list_feed_item itemData;
  const _QuestoinTitleWidget({Key? key, required this.itemData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text(
          itemData.target.title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ));
  }
}

// 节选
class _QuestoinExcerptWidget extends StatelessWidget {
  final Hot_list_feed_item itemData;
  const _QuestoinExcerptWidget({Key? key, required this.itemData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text(
          itemData.target.excerpt,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
        ));
  }
}

// 回答
class _QuestionItem extends StatelessWidget {
  final Question_feed_item itemData;

  const _QuestionItem({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var thum = itemData.target.thumbnail_info.thumbnails;
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (thum.isNotEmpty)
                  SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: Image.network(
                        thum.first["url"],
                        fit: BoxFit.cover,
                      )),
                Text(
                  itemData.target.excerpt,
                  style: const TextStyle(
                      
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                )
              ],
            )));
  }
}
