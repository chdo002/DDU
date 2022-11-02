import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransPageA extends StatefulWidget {
  const TransPageA({Key? key}) : super(key: key);

  @override
  State<TransPageA> createState() => _TransPageAState();
}

class _TransPageAState extends State<TransPageA> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('过场动画'),
        ),
        child: SafeArea(
          child: Center(
            child: AnimatedSwitcherDemo(),
          ),
        ));
  }
}



class AnimatedSwitcherDemo extends StatefulWidget {
  const AnimatedSwitcherDemo({Key? key}) : super(key: key);

  @override
  State<AnimatedSwitcherDemo> createState() => _AnimatedSwitcherDemoState();
}

class _AnimatedSwitcherDemoState extends State<AnimatedSwitcherDemo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 100),
          transitionBuilder: (Widget child, Animation<double> animation) {
            //执行缩放动画
            return ScaleTransition(child: child, scale: animation);
          },
          child: Text(
            '$_count',
            //显示指定key，不同的key会被认为是不同的Text，这样才能执行动画
            key: ValueKey<int>(_count),
          ),
        ),
        const SizedBox(height: 20),
        AnimatedSwitcher(
          duration: Duration(milliseconds: 1200),
          transitionBuilder: (Widget child, Animation<double> animation) {
            var tween = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
            return MySlideTransition(
              child: child,
              position: tween.animate(animation),
            );
          },
          child: Text(
            '$_count',
            //显示指定key，不同的key会被认为是不同的Text，这样才能执行动画
            key: ValueKey<int>(_count),
          ),
        ),
        ElevatedButton(
          child: const Text(
            '+1',
          ),
          onPressed: () {
            setState(() {
              _count += 1;
            });
          },
        ),
      ],
    );
  }
}

class MySlideTransition extends AnimatedWidget {
  const MySlideTransition({
    Key? key,
    required Animation<Offset> position,
    this.transformHitTests = true,
    required this.child,
  }) : super(key: key, listenable: position);

  final bool transformHitTests;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final position = listenable as Animation<Offset>;
    Offset offset = position.value;
    if (position.status == AnimationStatus.reverse) {
      offset = Offset(-offset.dx, offset.dy);
    }
    return FractionalTranslation(
      translation: offset,
      transformHitTests: transformHitTests,
      child: child,
    );
  }
}
