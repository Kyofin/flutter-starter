import 'package:flutter/material.dart';

/// 商品列表跳转商品详情，并在跳转时携带参数。
/// 效果图: ![](https://raw.githubusercontent.com/huzekang/picbed/master/Jietu20190616-225948.gif)
/// 主函数
void main() {
  runApp(
    new MaterialApp(
      title: '商品列表页面',
      // 主题色
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new ProductListView(
          //  生成包含50个商品对象的list容器
          List.generate(50, (i) => new Product("商品$i", "这是商品 $i 的商品详情"))),
    ),
  );
}

/// 商品列表组件
class ProductListView extends StatelessWidget {
  List<Product> productList;

  ProductListView(this.productList);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('商品列表页面'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
              leading: Icon(
                Icons.payment,
                color: Colors.lightBlue,
              ),
              title: Text(productList[index].productName),
              subtitle: Text(productList[index].productDesc),
              // list瓦片长按事件监听
              onLongPress: () =>
                  {debugPrint(productList[index].productName + "被点击！")},
              // list瓦片点击事件监听
              onTap: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ProductDetailView(productList[index])))
                  },
            ),
        itemCount: productList.length,
      ),
    );
  }
}

class ProductDetailView extends StatelessWidget {
  Product product;

  ProductDetailView(this.product);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(product.productName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              product.productName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            Image.network(
                'https://img14.360buyimg.com/n3/jfs/t1/39217/18/8918/161101/5d03a3c8E3a664231/06f48f43ceb7f5c0.jpg'),
            Text(
              // 换一种写法读取对象值
              '${product.productDesc}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            )
          ],
        ),
      ),
    );
  }
}

/// 封装一个product对象
class Product {
  String productName;
  String productDesc;

  // 构造函数
  Product(this.productName, this.productDesc);
}
