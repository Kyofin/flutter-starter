import 'package:flutter/material.dart';

/// 使用Container组件相当于div
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "container starter",
      home: Scaffold(
        body: Center(
          child: Container(
              child: Text(
                'Hello JsKang ',
                style: TextStyle(fontSize: 35.0),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              // 容器内部的元素定位
              alignment: Alignment.bottomRight,
              width: 400,
              height: 500,
              // 内外边距
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(30),
              // 装饰颜色
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(colors: [
                    Colors.lightBlue,
                    Colors.greenAccent,
                    Colors.purple
                  ]),
                  border: Border.all(width: 5.0, color: Colors.yellowAccent))),
        ),
      ),
    );
  }
}
