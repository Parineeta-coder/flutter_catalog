import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formKey.currentState!.validate())
      Navigator.pushNamed(context, MyRoutes.homeRoute);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                "assets/images/ll.gif",
                fit: BoxFit.cover,
              ),
              SizedBox(height: 30),
              // Text(
              //   "Welcome $name",
              //   style: TextStyle(
              //     fontSize: 20,
              //     color: Colors.orange[900],
              //     fontWeight: FontWeight.bold,
              //     fontFamily: GoogleFonts.lato().fontFamily,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                         
                          decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "username",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            ),
                          ),
                        ),
                          
                        
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "password",
                           fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "password cannot be empty";
                          }
                          else if (value.length < 6) {
                            return "Password length should be atleast 6";
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        moveToHome(context);
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom(
                        minimumSize: Size(130, 40),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
