import 'package:flutter/material.dart';
/// 卡片布局
/// 效果图：![](https://raw.githubusercontent.com/huzekang/picbed/master/20190616174148.png)
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '卡片title',
        home: Scaffold(
          appBar: AppBar(title: new Text('卡片布局')),
          body: ListView(
            children: <Widget>[
              new Card(
                  color: Colors.yellowAccent,
                  child: Column(
                    children: <Widget>[
                      new Text('我的电话本',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                      new ListTile(title: new Text('18826071577'),subtitle: new Text('虎皮蛋'),leading: Icon(Icons.phone_android),),
                      // 分割线
                      new Divider(),
                      new ListTile(title: new Text('18826031577'),subtitle: new Text('恰巧胡'),leading: Icon(Icons.phone_android),),
                      new Divider(),
                      new ListTile(title: new Text('17726031577'),subtitle: new Text('小迷妹'),leading: Icon(Icons.phone_android),),
                      new Divider(),
                      new ListTile(title: new Text('18836031577'),subtitle: new Text('龙骑士'),leading: Icon(Icons.phone_android),),
                      new Divider(),
                    ],
                  )
              ),
              new Card(
                  color: Colors.greenAccent,
                  child: Column(
                    children: <Widget>[
                      new Text('他人分享的电话本',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                      new ListTile(title: new Text('18826071577'),subtitle: new Text('虎皮蛋'),leading: Icon(Icons.phone_android),),
                      // 分割线
                      new Divider(),
                      new ListTile(title: new Text('18826031577'),subtitle: new Text('恰巧胡'),leading: Icon(Icons.phone_android),),
                      new Divider(),
                      new ListTile(title: new Text('17726031577'),subtitle: new Text('小迷妹'),leading: Icon(Icons.phone_android),),
                      new Divider(),
                      new ListTile(title: new Text('18836031577'),subtitle: new Text('龙骑士'),leading: Icon(Icons.phone_android),),
                      new Divider(),
                    ],
                  )
              ),
            ],
          )
        ));
  }
}


