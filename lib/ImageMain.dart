import 'package:flutter/material.dart';

/// 使用Image组件引入网络图片
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "image starter",
      home: Scaffold(
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
