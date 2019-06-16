import 'package:flutter/material.dart';

/// 使用Row布局
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Row starter",
      home: Scaffold(
        appBar: AppBar(title: new Text('row 布局')),
        body: new Row(
          children: <Widget>[
            // 直接使用元素，不会自动填充剩余空间，元素内容多大就多大
            new RaisedButton(
                onPressed: () => {},
                color: Colors.red,
                child: new Text('red button')),
            // 使用灵活布局包裹元素，占满剩余的空间
            new Expanded(
                child: new RaisedButton(
                    onPressed: () => {},
                    color: Colors.lightBlue,
                    child: new Text('blue button'))),
            // 直接使用元素，不会自动填充剩余空间，元素内容多大就多大
            new RaisedButton(
                onPressed: () => {},
                color: Colors.greenAccent,
                child: new Text('green button')),
          ],
        ),
      ),
    );
  }
}
