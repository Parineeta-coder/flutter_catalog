import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';


class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({Key? key, required this.catalog,}) : super(key: key);

 

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart;
    if (_cart.items.contains(catalog)) {
      isInCart = true;
    } else {
      isInCart = false;
    }

    return ElevatedButton(
      onPressed: () {
        if(!isInCart )
        {
          isInCart = isInCart.toggle();
         // ignore: unused_local_variable
         final _catalog = CatalogModel();

        _cart.catalog = CatalogModel();
        _cart.add(catalog);
        // setState(() {});
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