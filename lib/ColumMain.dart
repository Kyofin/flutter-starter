import 'package:flutter/material.dart';

/// 使用Column布局
/// 效果图：![](https://raw.githubusercontent.com/huzekang/picbed/master/20190616174245.png)
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Column starter",
      home: Scaffold(
        appBar: AppBar(title: new Text('Column 布局')),
        body: new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment:  MainAxisAlignment.center,
            children: <Widget>[
              // 直接使用元素，不会自动填充剩余空间，元素内容多大就多大
              new RaisedButton(
                  onPressed: () => {},
                  color: Colors.red,
                  child: new Text('red button')),
              new Text('哈哈哈哈哈😆'),
              new Text('你是个热爱❤️coding的男人'),
              new Text('给我star✨吧！！'),
              new Text('爱生活，爱AV'),
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
      ),
    );
  }
}
