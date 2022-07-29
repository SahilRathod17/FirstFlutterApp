import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalogs"),
      ),
      body: Center(
          child: Container(
        child: Text("My First App in Flutter"),
      )),
      drawer: Drawer(),
    );
  }
}
