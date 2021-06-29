import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/pages/home_detail.dart';
import 'package:velocity_x/velocity_x.dart';
import 'catalog_image.dart';


class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeDetailPage(
                catalog: catalog,
                key: new Key(toString()),
              ),
            ),
          ),
          child: CatalogItem(
            catalog: catalog,
            key: new Key(toString()),
          ),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required Key key, required this.catalog})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
              key: new Key(toString()),
            ),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(Colors.purple[400]!).bold.make(),
              catalog.desc.text.textStyle(context.captionStyle!).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey[900]),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    )),
                child: "Add to cart".text.make(),
              )
            ],
          ))
        ],
      ),
    )
        .color(context.cardColor)
        // .rounded.square(150)
        .make()
        .py16();
  }
}
