import 'package:flutter/material.dart';
import '../../models/item.dart';

class HSQCOl1ItemView extends StatelessWidget {
  const HSQCOl1ItemView({Key? key, required this.item}) : super(key: key);
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        color: Colors.amber,
        child: Container(
            height: 150,
            color: Colors.white,
            child: Row(textDirection: TextDirection.ltr, children: [
              Image(
                  image: NetworkImage(item.thumbnail ?? ""),
                  width: 150,
                  height: 150),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.name ?? "",
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                backgroundColor: Colors.blue),
                            textAlign: TextAlign.left,
                            maxLines: 2), // 标题
                        Text(item.expired_date_text_one ?? "",
                            style: const TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                                backgroundColor: Colors.deepOrangeAccent,
                                color: Colors.black54)),
                        Expanded(
                            child: Container(
                                color: Colors.teal,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: const [
                                                Text("去抢购1"),
                                                Text("去抢购2")
                                              ])),
                                      Column(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                          children: const [
                                            Text("去抢购1"),
                                            Text("去抢购2")
                                          ])
                                    ])))
                      ]))
            ])));
  }
}
