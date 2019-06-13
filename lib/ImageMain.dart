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
                "http://unioncz.com/uploads/allimg/c180221/15191U5b1F10-3Jb.jpg",
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
