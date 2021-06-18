import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
