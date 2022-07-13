// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gla/Menu.dart';
import 'package:gla/Signup.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var secureText = true;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Container(
            width: 300,
            height: 367,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  // ignore: prefer_const_constructors
                  child: Text("LOGIN",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold)),
                ),
                Text("_________________________________________"),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "ID",
                          hintText: "Enter Your Id",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Your Password",
                          labelStyle:
                              TextStyle(fontSize: 24, color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  secureText = !secureText;
                                });
                              },
                              icon: Icon(
                                  secureText? Icons.remove_red_eye: Icons.security,
                                  color: Colors.blue)),
                          ),
                          obscureText: secureText,
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Menu();
                      }));
                    },
                    child: Text("Login",
                        style: TextStyle(fontSize: 24, color: Colors.black)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Signup();
                      }));
                    },
                    child: Text("Create your Account"),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}