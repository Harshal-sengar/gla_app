import 'package:flutter/material.dart';
import 'package:gla/HomeScreen.dart';
import 'package:gla/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var secureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Center(
                child: Container(
                    margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
                    width: 300,
                    height: 565,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                        child: Text("SIGN UP",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Please fill this form to create your account"),
                      ),
                      Text("_________________________________________"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("Name",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      TextField(
                          decoration: InputDecoration(
                              hintText: "Enter your name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("GLA ID",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "Enter your Gla Id",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ))),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("Password",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Enter your Password",
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
                                  secureText
                                      ? Icons.remove_red_eye
                                      : Icons.security,
                                  color: Colors.blue)),
                        ),
                        obscureText: secureText,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text("Repeat Password",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Repeat your Password",
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
                                  secureText
                                      ? Icons.remove_red_eye
                                      : Icons.security,
                                  color: Colors.blue)),
                        ),
                        obscureText: secureText,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.green,
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return login();
                                  }));
                                },
                                child: Text("SignUP")),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.red,
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomeScreen();
                                  }));
                                },
                                child: Text("Cancel")),
                          )
                        ]),
                      )
                    ]))),
          ],
        ));
  }
}
