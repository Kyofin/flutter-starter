import 'package:flutter/material.dart';


/// 页面跳转携带参数返回
/// 效果图：![](https://raw.githubusercontent.com/huzekang/picbed/master/Jietu20190617-212357.gif)
void main() {
  runApp(
    new MaterialApp(
      title: '页面跳转携带参数返回',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new FirstPage(),
    ),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('页面跳转携带参数返回'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('images/01.jpg'),
            WechatPayButton()
          ],
        ),
      ),
    );
  }
}

class WechatPayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.orange,
        onPressed: ()=>{_navigatorPayPage(context)},
      child: Text('使用微信支付'),
        );

  }

  // 异步
  _navigatorPayPage(context) async{
    // 等待返回的设置到result中
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=>PayPage()));

    // 返回结果显示在snackBar中
    Scaffold.of(context).showSnackBar(SnackBar(content: Text('$result')));

  }
}

class PayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('支付页面'),
      ),
      body: Center(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('需要支付99元'),
            RaisedButton(
              color: Colors.green,
              child: Text('确认支付'),
              onPressed: ()=>{
              // 导航回去并携带参数
              Navigator.pop(context,'成功支付')
              },
            ),
            RaisedButton(
              color: Colors.red,
              child: Text('取消支付'),
              onPressed: ()=>{
              // 导航回去并携带参数
              Navigator.pop(context,'支付失败')
              },
            )
          ],
        ),
      ),
    );
  }
}
