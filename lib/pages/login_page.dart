import 'package:flutter/material.dart';
//hm
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 20,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "password"),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      print("hi pari");
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
