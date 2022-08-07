import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:untitled/MyDrawer.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalogs"),
        //backgroundColor: Colors.deepPurple[900],
      ),
      body: Center(
          child: Container(
        child: Text("My First App in Flutter"),
      )),
      drawer: MyDrawer(),
    );
  }
}
