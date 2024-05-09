import 'package:flutter/material.dart';

import 'item.dart';

class DetailWidget extends StatelessWidget {
  final Item item;

  const DetailWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (item.image != null) Image.network(item.image!, height: 100, width: 300),
            Text(
              item.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(item.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
