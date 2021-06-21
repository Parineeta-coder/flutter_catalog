import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://image.freepik.com/free-vector/portrait-african-american-woman-profile-avatar-young-black-girl_102172-418.jpg";

    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Pari Sarkar"),
              accountEmail: Text("pari@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              )),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.home,
            color: Colors.deepPurple,
          ),
          title: Text(
            "Home",
            // textScaleFactor: 1.2,
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.deepPurple,
          ),
          title: Text(
            "Profile",
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.mail,
            color: Colors.deepPurple,
          ),
          title: Text(
            "Email",
          ),
        )
      ],
    ));
  }
}
