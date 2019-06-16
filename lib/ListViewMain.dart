import 'package:flutter/material.dart';

/// 使用ListView组件渲染列表 （图片 + listTile组合）
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView starter",
      home: Scaffold(
        appBar: new AppBar(
          title: new Text('ListView Bar'),
        ),
        body: new ListView(
          children: <Widget>[
            new ListTile(leading: new Icon(Icons.access_time),title: Text('access_time')),
            new Image.network('https://i.loli.net/2019/06/14/5d02f5d19c5c982612.jpg'),
            new ListTile(leading: new Icon(Icons.airline_seat_legroom_reduced),title: Text('airline_seat_legroom_reduced')),
            new Image.network('https://i.loli.net/2019/06/14/5d02f5d1a0b2782399.jpg'),
            new ListTile(leading: new Icon(Icons.add_box),title: Text('add_box')),
            new Image.network('https://i.loli.net/2019/06/14/5d02f5d1a47f845439.jpg'),
          ],
        ),
      ),
    );
  }
}
