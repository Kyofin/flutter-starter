import 'package:flutter/material.dart';

/// 根据动态列表，使用ListView组件渲染列表
/// 效果图：![](https://raw.githubusercontent.com/huzekang/picbed/master/20190616174643.png)
void main() => runApp(MyApp(
    //传递一个字符串list到构造函数的items值中
    items: new List<String>.generate(1000, (i) => "视频 $i")));

class MyApp extends StatelessWidget {
  List<String> items;

  // 创建必须传入items的构造函数
  MyApp({Key key, @required this.items}) : super(key: key);

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
                // 使用动态列表生成listview
                child: ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context, index) {
                    return new ListTile(
                      leading: new Icon(Icons.video_call,color: Colors.blueAccent,),
                      // 传入itemCount的下标获取items中对应的值
                      title: Text('${items[index]}'),
                    );
                  },
                )
            ),
          ),
        ));
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
          width: 200.0,
          color: Colors.blueGrey,
        ),
        new Container(
          width: 200.0,
          color: Colors.greenAccent,
        ),
        new Container(
          width: 200.0,
          color: Colors.orangeAccent,
        )
      ],
    );
  }
}
