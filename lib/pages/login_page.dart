import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15,
          ),
                 TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
        Text(
            "Welcome!!!",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Username", labelText: "UserName"),
                ),
        children: [
                     hintText: "Enter Your Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("YESSSSS");
                  },
                  child: Text("LOGIN"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
