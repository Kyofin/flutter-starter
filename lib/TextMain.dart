import 'package:flutter/material.dart';


/// 使用Text组件
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text widget stater',
      home: Scaffold(
        body: Center(
          child: Text(
            "hello JSkang-技术康，喜欢❤️打代码，并且愿意打代码遛狗一辈子的男人👨，我最希望就是所有新技术都能学会。",
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 125, 124),
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.double
            ),

          ),
        ),
      ),
    );
  }
}
