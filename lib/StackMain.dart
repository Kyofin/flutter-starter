import 'package:flutter/material.dart';

/// 使用Stack层叠布局（只能限制使用两个组件）
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // 定义一个层叠组件
    var stack = new Stack(
      // 定义第二个元素对于第一个元素的位置
      alignment: const FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'https://i.loli.net/2019/06/14/5d02f5d19c5c982612.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration: new BoxDecoration(color: Colors.pinkAccent),
          child: new Text('快加我微信吧~'),
          padding: EdgeInsets.all(10.0),
        )
      ],
    );

    return MaterialApp(
      title: "Stack starter",
      home: Scaffold(
          appBar: AppBar(title: new Text('Column 布局')),
          // 指向上面定义的层叠组件
          body: stack),
    );
  }
}
