import 'package:flutter/material.dart';

/// 页面点击跳转
void main() {
  runApp(MaterialApp(title: '导航演示', home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('视频列表页'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '视频名称：最美人妻',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.network(
                'https://i.loli.net/2019/06/14/5d02f5d19c5c982612.jpg'),
            RaisedButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SecondScreen()))
                  },
              color: Colors.orangeAccent,
              child: Text('跳转视频详情页'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('视频详情页')),
        body: Card(
          child: Column(
            children: <Widget>[
              Image.network(
                  'https://i.loli.net/2019/06/14/5d02f5d1a0b2782399.jpg'),
              RaisedButton(
                onPressed: () => {Navigator.pop(context)},
                child: Text('返回视频列表页面'),
              ),
            ],
          ),
        ));
  }
}
