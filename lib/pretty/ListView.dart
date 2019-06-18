import 'package:flutter/material.dart';
import 'package:flutter_starter/pretty/model/post.dart';

/// ListView实战
/// 效果图： ![](https://raw.githubusercontent.com/huzekang/picbed/master/20190618224301.png)
void main() {
  runApp(
    new MaterialApp(
      title: 'JSkang',
      theme: new ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: new ListViewHome(),
    ),
  );
}

class ListViewHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // 背景颜色设置
        backgroundColor: Colors.grey[100],
        appBar: new AppBar(
          title: new Text('JSkang'),
          centerTitle: true,
          elevation: 0.0, // 阴影
        ),
        body: ListView.builder(
          itemBuilder: _listItemBuilder,
          itemCount: posts.length,
        ));
  }

  /// 定义ListView中的每个组件
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10.0),
      child: new Column(
        children: [
          Image.network(posts[index].imageUrl),
          // 定义一个高度20的容器占位
          SizedBox(height: 20.0),
          Text(
            posts[index].title,
            // 使用主题文字样式
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            // 使用主题文字样式
            style: Theme.of(context).textTheme.subhead,
          ),
          // 定义一个高度20的容器占位
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
