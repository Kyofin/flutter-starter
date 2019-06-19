import 'package:flutter/material.dart';

/// 定义底部导航bar
/// 此为有状态的组件 => 可以通过setSate()改变组件状态
class BottomNavigationBarDemo extends StatefulWidget {

  @override
  BottomNavigationBarDemoState createState() =>
      new BottomNavigationBarDemoState();
}

class BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  // 设置默认值为0
  int _currentIndex = 0;

  // 自定义点击事件处理改变_currentIndex
  void _onTapHandler(int index) {
    // 改变state
    setState(() {
      _currentIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // 默认超过三个就会显示空白，要设置下面解决
      type: BottomNavigationBarType.fixed,
      // 设置当前激活的bar
      currentIndex: _currentIndex,
      // 设置点击事件处理
      onTap: _onTapHandler,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), title: Text('explore')),
        BottomNavigationBarItem(
            icon: Icon(Icons.history), title: Text('history')),
        BottomNavigationBarItem(
            icon: Icon(Icons.list), title: Text('list')),
        BottomNavigationBarItem(
            icon: Icon(Icons.translate), title: Text('translate')),
      ],
    );
  }


}
