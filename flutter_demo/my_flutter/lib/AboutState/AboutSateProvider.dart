import 'package:flutter/cupertino.dart';

class InheritedProvider<T> extends InheritedWidget {
  InheritedProvider({required this.data, required Widget child}) : super(child: child);
  final T data;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

class MyChangeNotifier implements Listenable {
  List listeners = [];

  @override
  void addListener(VoidCallback listener) {
    listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    listeners.remove(listener);
  }

  void notifyListen() {
    listeners.forEach((element) => element());
  }
}

class ChangeNotifierProvider<T extends MyChangeNotifier> extends StatefulWidget {
  const ChangeNotifierProvider({Key? key, required this.data, required this.child});

  final Widget child;
  final T data;

  static T? of<T>(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<InheritedProvider<T>>();
    return provider?.data;
  }

  @override
  ChangeNotifierProviderState<T> createState() => ChangeNotifierProviderState<T>();
}

class ChangeNotifierProviderState<T extends MyChangeNotifier> extends State<ChangeNotifierProvider<T>> {
  update() {
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant ChangeNotifierProvider<T> oldWidget) {
    if (widget.data != oldWidget.data) {
      oldWidget.data.removeListener(update);
      widget.data.addListener(update);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    widget.data.addListener(update);
    super.initState();
  }

  @override
  void dispose() {
    widget.data.removeListener(update);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InheritedProvider<T>(data: widget.data, child: widget.child);
  }
}
