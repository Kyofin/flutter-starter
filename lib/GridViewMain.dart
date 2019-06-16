import 'package:flutter/material.dart';

/// 使用GridView组件做出手机相册效果
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView starter",
      home: Scaffold(
          appBar: new AppBar(title: Text('网格view')),
          body: new GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              // 横向网格数目
              crossAxisCount: 3,
              // 纵轴间隙
              mainAxisSpacing: 2.0,
              // 横轴间隙
              crossAxisSpacing: 2.0,
            ),
            // 网格内容
            children: <Widget>[
              Image.network('https://i.gimy.tv/czp/uploads/vod/2018-10-18/8928b22a8f14bd22dc5aed454b48bd9b.JPG',fit: BoxFit.cover,),
              Image.network('https://i.gimy.tv/czp/uploads/vod/2019-04-03/5ca3e0810c499.jpg',fit: BoxFit.cover,),
              Image.network('https://i.gimy.tv/czp/uploads/vod/20190220/e9bcce2a35ca3ac9b852ae8a0859d868.jpeg',fit: BoxFit.cover,),
              Image.network('https://i.gimy.tv/czp/uploads/vod/2018-10-11/5bbefc30a1a18.jpg',fit: BoxFit.cover,),
              Image.network('https://i.gimy.tv/czp/uploads/vod/2018-10-11/5bbee9b387216.jpg',fit: BoxFit.cover,),
              Image.network('https://i.gimy.tv/czp/uploads/vod/2018-12-12/5c108c82d1c4d.jpg',fit: BoxFit.cover,),
              Image.network('https://i.gimy.tv/czp/uploads/vod/2018-10-12/5bc0411bb31fa.jpg',fit: BoxFit.cover,),
              Image.network('https://i.gimy.tv/czp/uploads/vod/2019-04-07/5ca9265aa4c79.jpg',fit: BoxFit.cover,),
              Image.network('https://i.gimy.tv/czp/uploads/vod/2018-10-12/5bc03c8635992.jpg',fit: BoxFit.cover,),
            ],
          )),
    );
  }
}
