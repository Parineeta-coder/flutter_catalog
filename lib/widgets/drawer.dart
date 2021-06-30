import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

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
              accountName: Text("Parineeta Sarkar"),
              accountEmail: Text("pari@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              )),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.deepPurple[400],
          ),
          title: Text(
            "Profile",
          ),
          subtitle: Text("Personal"),
        ),


        ListTile(
          leading: Icon(
            CupertinoIcons.location,
            color: Colors.deepPurple[400],
          ),
          title: Text(
            "Address",
            // textScaleFactor: 1.2,
          ),
          subtitle: Text("Hengrabari"),
          trailing: Icon(Icons.edit),
        ),



        ListTile(
          leading: Icon(
            CupertinoIcons.phone,
            color: Colors.deepPurple[400],
          ),
          title: Text(
            "863xxxxxx",
          ),
        ),


        ListTile(
          leading: Icon(
            CupertinoIcons.hand_point_right,
            color: Colors.deepPurple[400],
          ),
          title: Text(
            "Logout",
            // onTap: () => Navigator.pushReplacementNamed(context,MyRoutes.loginRoute))
          ),
        )
      ],
    ));
  }
}
