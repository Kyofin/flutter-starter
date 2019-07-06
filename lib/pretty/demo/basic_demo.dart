import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(fontSize: 16.0);

  final String _author = '李白';

  final String _title = '将进酒';

  @override
  Widget build(BuildContext context) {
    return new Text(
      '《 $_title 》--- $_author。\n千金散尽还复来。长风破浪会有时，直挂云帆济沧海。安能摧眉折腰事权贵，使我不得开心颜。仰天大笑出门去，我辈岂是蓬蒿人。大鹏一日同风起，扶摇直上九万里。不是景色，但很美。',
      textAlign: TextAlign.center,
      style: _textStyle,
      //限制行数
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}

/// 一行文字中有不同的样式
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'huzekang',
          style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 34.4,
              // 斜体
              fontStyle: FontStyle.italic,
              // 加粗
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
                text: '.com',
                style: TextStyle(fontSize: 17.0, color: Colors.blueAccent))
          ]),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://resources.ninghao.org/images/say-hello-to-barry.jpg'),
            alignment: Alignment.topCenter,
//            repeat: ImageRepeat.repeat
            fit: BoxFit.cover),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.pool,
              size: 68.0,
              color: Colors.white,
            ),
//          color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 190.0,
            height: 90.0,
            // 设置容器装饰
            decoration: BoxDecoration(
                // 设置了颜色，👆的颜色就要去掉，否则会冲突
                color: Color.fromRGBO(3, 54, 255, 1.0),
                // 边框
                border: Border.all(
                    color: Colors.orangeAccent[100],
                    width: 3.0,
                    style: BorderStyle.solid),
                // 边框圆弧
//            borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0.1, 16),
                      color: Color.fromRGBO(16, 20, 188, 1.0),
                      blurRadius: 25.0,
                      spreadRadius: -9)
                ],
                // 设置容器形状就不能设置👆的圆角
                shape: BoxShape.circle,
                // 设置渐变色
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(72, 102, 255, 1.0),
                  Color.fromRGBO(311, 28, 128, 1.0)
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          )
        ],
      ),
    );
  }
}
