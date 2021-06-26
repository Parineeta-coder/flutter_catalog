import 'package:flutter/material.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({required Key key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        image,
        width: 90,
        height: 100,
      ),
    );

    // box.rounded.p8.color(MyTheme.creamColor).make().p16().w40(context);
  }
}