import 'package:flutter/material.dart';

/// 使用Image组件引入网络图片
/// 效果图：![](https://raw.githubusercontent.com/huzekang/picbed/master/20190616174902.png)
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "image starter",
      home: Scaffold(
        appBar: AppBar(title: Text('Image组件¡'),),
        body: Center(
          child: Container(
            // 引入网络图片
            child: new Image.network(
                "https://i.loli.net/2019/06/14/5d02f5d19c5c982612.jpg",
              // 图片调色
              color: Colors.greenAccent,
              colorBlendMode: BlendMode.colorBurn,
              repeat: ImageRepeat.repeatY,
            ),
            width: 300,
            height: 550,
            color: Colors.pinkAccent,
          ),
        ),
      ),
    );
  }
}
