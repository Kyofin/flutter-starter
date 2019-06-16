import 'package:flutter/material.dart';

/// 使用ListView组件渲染横向列表 （图片 + listTile组合）
/// 效果图：![](https://raw.githubusercontent.com/huzekang/picbed/master/Jietu20190616-175545.gif)
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "ListView starter",
        home: Scaffold(
          appBar: new AppBar(
            title: new Text('ListView Bar'),
          ),
          body: Center(
            child: new Container(
                height: 300,
                // 使用自定义ListView组件
                child: MyList()
            ),
          ),
        )
    );
  }
}

/// 定义一个横向的listview组件
class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 200.0,
          color: Colors.pinkAccent,
        ),
        new Container(
          width: 300.0,
          color: Colors.blueGrey,
        ),
        new Container(
          width: 400.0,
          color: Colors.greenAccent,
        ), new Container(
          width: 500.0,
          color: Colors.orangeAccent,
        )
      ],
    );
  }
}

