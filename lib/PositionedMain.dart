import 'package:flutter/material.dart';

/// 使用Positioned相对定位布局（只能限制使用两个组件）
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 定义一个层叠组件
    var stack = new Stack(
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage(
              'https://i.loli.net/2019/06/14/5d02f5d19c5c982612.jpg'),
          radius: 100.0,
        ),
        new Positioned(
          child: new Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(5),
              child: new Text("快点我吧~")),
          bottom: 10,
          left: 50,
        ),
        new Positioned(
          child: new Container(
              color: Colors.purpleAccent,
              padding: EdgeInsets.all(5),
              child: new Text("快点我吧~")),
          top: 40,
          right: 20,
        )
      ],
    );

    return MaterialApp(
      title: "Positioned starter",
      home: Scaffold(
          appBar: AppBar(title: new Text('Positioned 布局')),
          // 指向上面定义的层叠组件
          body: stack),
    );
  }
}
