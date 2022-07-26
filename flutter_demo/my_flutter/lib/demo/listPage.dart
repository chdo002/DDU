import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Column -> Column -> Row -> Row -> Column
    return Scaffold(
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: SafeArea(
            child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
              child: Column(
            children: [
              Row(children: [
                Expanded(
                  child: ColoredBox(
                      color: Colors.deepPurpleAccent,
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Container(
                          color: Colors.amberAccent,
                          width: 130,
                          height: 130,
                        ),
                        Expanded(
                            child: ColoredBox(
                                color: Colors.deepOrangeAccent,
                                child: ConstrainedBox(
                                    constraints: const BoxConstraints(minHeight: 130, maxHeight: double.infinity),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                                        children:  [
                                          Column(children: const [
                                            Text(
                                              "this line might have lots of letters, it will expend the `deepPurpleAccent` row's height",
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text('data')
                                          ]),

                                          const Text(
                                              "this line should align to the bottom of the left amberAccent Container or under it")
                                        ]))))
                      ])),
                )
              ]),
              Row(children: [
                Expanded(
                  child: ColoredBox(
                      color: Colors.cyan,
                      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Container(
                          color: Colors.green,
                          width: 130,
                          height: 130,
                        ),
                        Expanded(
                            child: ColoredBox(
                                color: Colors.deepOrangeAccent,
                                child: ConstrainedBox(
                                    constraints: const BoxConstraints(minHeight: 130, maxHeight: double.infinity),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
                                      Text(
                                        "this line now have lots of letterssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss, it will expend the `deepPurpleAccent` row's height",
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      Text("this line now under the bottom of the left amberAccent Container")
                                    ]))))
                      ])),
                )
              ])
              // Row(children: [
              //   Expanded(
              //     child: ColoredBox(
              //         color: Colors.deepPurpleAccent,
              //         child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //           Container(
              //             color: Colors.amberAccent,
              //             width: 130,
              //             height: 130,
              //           ),
              //           Expanded(
              //               child: ColoredBox(
              //                   color: Colors.deepOrangeAccent,
              //                   child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //                     const Text(
              //                       'line 1',
              //                       style: TextStyle(fontSize: 24),
              //                     ),
              //                     Row(children: const [
              //                       Expanded(child: Text(
              //                         'this is not what i want',
              //                         style: TextStyle(fontSize: 12),
              //                         softWrap: true,
              //                         maxLines: 1,
              //                         overflow: TextOverflow.ellipsis,
              //                       ))
              //                       ,Icon(Icons.arrow_right),
              //                       Expanded(child: Text(''))
              //                     ]),
              //                     Row(children: const [
              //                       Text(
              //                         'this line might overflow',
              //                         style: TextStyle(fontSize: 12),
              //                         softWrap: true,
              //                         maxLines: 1,
              //                         overflow: TextOverflow.ellipsis,
              //                       ),
              //                       Icon(Icons.arrow_right),
              //                     ]),
              //                     Row(children: const [
              //                       Text(
              //                         'this line is overflow, but icon is at right position',
              //                         style: TextStyle(fontSize: 12),
              //                       ),
              //                       Icon(Icons.arrow_right)
              //                     ]),
              //
              //                   ])))
              //         ])),
              //   )
              // ])
            ],
          ))
        ])));
  }
}
