import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';


class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<StatefulWidget> get createState => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  CatalogModel? get catalog => null;

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart;
    if (_cart.items.contains(widget.catalog)) {
      isInCart = true;
    } else {
      isInCart = false;
    }

    return ElevatedButton(
      onPressed: () {
        if(!isInCart )
        {
          isInCart = isInCart.toggle();
         final _catalog = CatalogModel();

        _cart.catalog = CatalogModel();
        _cart.add(widget.catalog);
        setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[700]),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done, color: Colors.green[500],)
       : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}