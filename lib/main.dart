import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      themeMode: ThemeMode.dark,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      // theme: ThemeData(
      //   primarySwatch: Colors.deepPurple,
      //   appBarTheme: AppBarTheme(
      //       color: Colors.white,
      //       elevation: 0.0,
      //       iconTheme: IconThemeData(color: Colors.black)),
      // ),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
    return materialApp;
  }
}


