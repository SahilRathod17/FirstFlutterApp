import 'package:flutter/material.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

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
