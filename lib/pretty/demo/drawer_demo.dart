import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'peterpoker',
              style: Theme.of(context).textTheme.title,
            ),
            accountEmail: Text(
              '1040080742@qq.com',
              style: Theme.of(context).textTheme.subhead,
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/01.jpg'),
            ),
            // 装饰drawerHeader
            decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                    image: NetworkImage(
                        'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                    fit: BoxFit.cover,
                    // 混合效果
                    colorFilter: ColorFilter.mode(
                        Colors.yellow[400].withOpacity(0.6),
                        BlendMode.hardLight))),
          ),
          ListTile(
            title: Text(
              'Message',
              // Text文字右对齐
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              size: 26,
              color: Colors.black12,
            ),
            // 点击后收起抽屉
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              // Text文字右对齐
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              size: 26,
              color: Colors.black12,
            ),
            // 点击后收起抽屉
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              // Text文字右对齐
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              size: 26,
              color: Colors.black12,
            ),
            // 点击后收起抽屉
            onTap: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
