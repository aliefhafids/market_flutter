import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({
    Key ? key
  }): super(key: key);


  @override
  Widget build(BuildContext context) {
    final Item item = ModalRoute.of(context) !.settings.arguments as Item;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail List'),
      ),
      body: Center(
        child: Text(item.name +
          ' with ' +
          item.price.toString() +
          ' | available stok : ' +
          item.stok.toString()
        ),
      ),
    );
  }
}