import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/AboutState/AboutSateProvider.dart';

class Item {
  late double price;
  late double count;
  Item(this.count, this.price);
}

class CartModel extends MyChangeNotifier {
  final List<Item> _items = [];
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);
  double get totalPrice => _items.fold(
      0,
      (previousValue, element) =>
          previousValue + element.count * element.price);

  void add(Item item) {
    _items.add(item);
    notifyListen();
  }
}

class ProviderRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProviderRouteState();
}

class ProviderRouteState extends State<ProviderRoute> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ChangeNOtifierProvider<CartModel>(
            data: CartModel(),
            child: Builder(builder: (context) {
              return Column(children: <Widget>[
                Builder(builder: (context) {
                  var cart = ChangeNOtifierProvider.of<CartModel>(context);
                  return Text("总价: ${cart?.totalPrice}");
                }),
                Builder(builder: (context) {
                  return ElevatedButton(
                      onPressed: () {
                        ChangeNOtifierProvider.of<CartModel>(context)
                            ?.add(Item(1, 12));
                      },
                      child: Text("添加商品"));
                })
              ]);
            })));
  }
}
