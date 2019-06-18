import 'package:flutter/material.dart';
import 'package:flutter_starter/pretty/demo/listview_demo.dart';

/// ListView实战
/// 效果图： ![](https://raw.githubusercontent.com/huzekang/picbed/master/20190618224301.png)
void main() {
  runApp(
    new MaterialApp(
      title: 'JSkang',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new ListViewHome(),
    ),
  );
}


