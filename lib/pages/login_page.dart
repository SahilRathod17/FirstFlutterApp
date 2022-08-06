import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class login_page extends StatefulWidget {
  const login_page({Key? key}) : super(key: key);

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  bool ChangeButton = false;

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        ChangeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your username",
                        labelText: "Username",
                        // filled: true,
                        // fillColor: Colors.black26,
                        border: OutlineInputBorder(),
                        // icon: Icon(Icons.verified_use),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      //keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      maxLength: 10,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty.";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    TextFormField(
                      obscureText: true,
                      //obscuringCharacter: '*',
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        //  icon: Icon(Icons.password_sharp),

                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty.";
                        } else if (value.length < 8) {
                          return "Password length should be eight.";
                        }
                        return null;
                      },
                      textInputAction: TextInputAction.done,
                      maxLength: 8,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: ChangeButton ? 40 : 140,
                        height: 40,
                        alignment: Alignment.center,
                        child: ChangeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[900],
                          // shape:
                          //     ChangeButton ? BoxShape.circle : BoxShape.rectangle,
                          borderRadius:
                              BorderRadius.circular(ChangeButton ? 40 : 8),
                        ),
                      ),
                    ),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeroute);
                    //   },
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
