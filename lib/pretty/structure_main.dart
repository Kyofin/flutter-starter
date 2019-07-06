import 'package:flutter/material.dart';
import 'package:flutter_starter/pretty/demo/bottom_navigation_bar_demo.dart';
import 'package:flutter_starter/pretty/demo/drawer_demo.dart';
import 'package:flutter_starter/pretty/demo/listview_demo.dart';
import 'package:flutter_starter/pretty/demo/basic_demo.dart';
import 'package:flutter_starter/pretty/demo/layout_demo.dart';
///
///
/// app常用界面结构实战
///
/// 1. AppBar 顶部栏
/// 2. TabBar + TabBarView  页签
/// 3. Drawer 抽屉
/// 4. BottomNavigationBar 底部导航栏
///
///
///
void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          // 主题颜色
          primarySwatch: Colors.yellow,
          // 主题点击高亮颜色
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          // 水波纹颜色
          splashColor: Colors.white70),
      home: new Home(),
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 使用TabContainer,类似页签效果 【 TabContainer => TabBar + TabBarView】
    return DefaultTabController(
        // 定义有几个tab
        length: 3,
        child: new Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: new AppBar(
            title: new Text('Jskang'),
            elevation: 0.0,
            centerTitle: true,
            // 导航右边action区域
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => {debugPrint('搜索按钮1被触发')}),
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => {debugPrint('搜索按钮2被触发')})
            ],
            // 定义tabBar页签头
            bottom: TabBar(
              // 未选择tab的颜色
              unselectedLabelColor: Colors.black26,
              // tab下面指示器大小
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 2.0,
              // tab下面指示器颜色
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.directions_bike),
                ),
                Tab(
                  icon: Icon(Icons.local_florist),
                ),
                Tab(
                  icon: Icon(Icons.change_history),
                ),
              ],
            ),
          ),
          // 定义tabBarView页签内容
          body: TabBarView(
            children: <Widget>[

              ListViewHome(),
              //基础组件demo
              BasicDemo(),
              LayoutDemo()
//              Icon(
//                Icons.local_florist,
//                size: 80,
//                color: Colors.black12,
//              ),
//              Icon(
//                Icons.change_history,
//                size: 80,
//                color: Colors.black12,
//              ),
            ],
          ),
          // 定义抽屉 => 默认会在appBar上添加菜单按钮，点击即可打开抽屉 【屏幕边缘扫动打开抽屉】
          drawer: DrawerDemo(),
          // 定义底部NavigationBar
          bottomNavigationBar: BottomNavigationBarDemo(),
        ));
  }
}
