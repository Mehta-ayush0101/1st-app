import "dart:ui";

import "package:first_app/utils/routes.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool button = false;
  final _formKey = GlobalKey<FormState>();
  movetohome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        button = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeroute);
      setState(() {
        button = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("welcome $name",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "UserName",
                        hintText: "Enter UserName",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      onChanged: (Value) {
                        name = Value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your Password';
                        } else if (value.length < 8) {
                          return 'password cannot be less then 8 characters';
                        }
                        return null;
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Material(
                color: Color.fromARGB(255, 116, 192, 255),
                borderRadius: BorderRadius.circular(button ? 50 : 8),
                child: InkWell(
                  onTap: () => movetohome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: button ? 40 : 125,
                    height: 40,
                    alignment: Alignment.center,
                    child: button
                        ? Icon(
                            Icons.done,
                          )
                        : Text(
                            "login",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
