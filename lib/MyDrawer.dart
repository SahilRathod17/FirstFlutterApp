import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.deepPurple,
      child: Container(
        //color: Colors.deepPurple[900],
        child: ListView(
          padding: EdgeInsets.zero,
          //addAutomaticKeepAlives: true,
          children: [
            DrawerHeader(
                //decoration: BoxDecoration(color: Colors.deepPurple[900]),
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Sahil Rathod'),
                  accountEmail: Text('sahilrathod1120@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/me.jpeg"),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
              //tileColor: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
              //tileColor: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact us",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
              //tileColor: Colors.white,
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Settings",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.white),
              ),
              //tileColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
