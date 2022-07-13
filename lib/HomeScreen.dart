import 'package:flutter/material.dart';
import 'package:gla/Signup.dart';
import 'package:gla/login.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GLA CANTEEN", style: TextStyle(color: Colors.amber)),
          backgroundColor: Colors.black,
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Signup();
                  }));
                },
                child: Text("Sign UP",
                    style: TextStyle(backgroundColor: Colors.black)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return login();
                  }));
                },
                child: Text("Login",
                    style: TextStyle(backgroundColor: Colors.black)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(children: [
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Positioned(
                      child: Image.network(
                    'https://images.unsplash.com/photo-1506280754576-f6fa8a873550?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGZvb2QlMjBwaG90b2dyYXBoeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60',
                    width: 500,
                    //height: 500,
                    //fit: BoxFit.fitHeight,
                    fit: BoxFit.fitWidth,
                  )),
                ),
                Positioned(
                    top: 300,
                    left: 100,
                    child: Text("GLA CANTEEN",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 34,
                            fontWeight: FontWeight.bold)))
              ]),
            ]),
          ],
        ));
  }
}
