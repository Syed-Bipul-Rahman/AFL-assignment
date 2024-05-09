import 'package:flutter/material.dart';

import 'DetailWidget.dart';
import 'MasterListWidget.dart';
import 'item.dart';

void main() => runApp(MyApp());




class MyApp extends StatelessWidget {
  final List<Item> items = [
    Item('Item 1', 'Description for Item 1'),
    Item('Item 2', 'Description for Item 2',image: 'https://www.1800flowers.com/blog/wp-content/uploads/2015/11/purple-flower.jpg.webp'),
    Item('Item 3', 'Description for Item 3'),
    Item('Item 4', 'Description for Item 4',image: 'https://image.shutterstock.com/image-photo/pink-magnolia-flower-isolated-on-260nw-2208499319.jpg'),
    Item('Item 5', 'Description for Item 5'),
    Item('Item 6', 'Description for Item 6'),
    Item('Item 7', 'Description for Item 7'),
    Item('Item 8', 'Description for Item 8',image: 'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg'),
  ];

  void _onItemSelected(Item item, BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailWidget(item: item),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master-Detail Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Master-Detail Example'),
        ),
        body: MasterListWidget(items: items, onItemSelected: _onItemSelected),
      ),
    );
  }
}