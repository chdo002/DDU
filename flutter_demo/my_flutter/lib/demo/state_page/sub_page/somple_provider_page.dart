import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter/demo/state_page/sub_page/simple_provider.dart';

class ProviderPage extends StatefulWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SimpleProviderPageState();
  }
}

class SimpleProviderPageState extends State<ProviderPage> {
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(middle: Text(' simple provider demo')), child: ProviderRoute());
  }
}

class Item {
  Item(this.price, this.count);
  double price; //商品单价
  int count; // 商品份数
  //... 省略其它属性
}

class CartModel extends ChangeNotifier {
  // 用于保存购物车中商品列表
  final List<Item> _items = [];

  // 禁止改变购物车里的商品信息
  UnmodifiableListView<Item> get items => UnmodifiableListView(_items);

  // 购物车中商品的总价
  double get totalPrice => _items.fold(0, (value, item) => value + item.count * item.price);

  // 将 [item] 添加到购物车。这是唯一一种能从外部改变购物车的方法。
  void add(Item item) {
    _items.add(item);
    // 通知监听器（订阅者），重新构建InheritedProvider， 更新状态。
    notifyListeners();
  }
}

class ProviderRoute extends StatefulWidget {
  const ProviderRoute({Key? key}) : super(key: key);

  @override
  _ProviderRouteState createState() => _ProviderRouteState();
}

class _ProviderRouteState extends State<ProviderRoute> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SimpleChangeNotifierProvider<CartModel>(
        data: CartModel(),
        child: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              const SizedBox(
                height: 100,
              ),
              SimpleConsumer<CartModel>(builder: (context, data) {
                return Container(
                    width: double.infinity, height: 200, color: Colors.red, child: Text("1总价: ${data!.totalPrice}"));
              }),
              Builder(builder: (context) {
                if (kDebugMode) {
                  print("ElevatedButton build");
                } //在后面优化部分会用到
                return ElevatedButton(
                  child: const Text("添加商品"),
                  onPressed: () {
                    //给购物车中添加商品，添加后总价会更新
                    SimpleChangeNotifierProvider.of<CartModel>(context, listen: false)?.add(Item(20.0, 1));
                  },
                );
              }),
            ],
          );
        }),
      ),
    );
  }
}
