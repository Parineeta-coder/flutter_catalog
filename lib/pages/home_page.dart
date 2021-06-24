import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
// import 'package:flutter/services.dart';
// import 'dart:convert';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Pari";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            var itemWidget = ItemWidget(
              item: dummyList[index],
              key: new Key(index.toString()),
            );
            return itemWidget;
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
