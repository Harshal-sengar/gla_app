import 'package:flutter/material.dart';
import 'package:gla/Menu.dart';

class ChooseCanteen extends StatefulWidget {
  const ChooseCanteen({Key? key}) : super(key: key);

  @override
  State<ChooseCanteen> createState() => _ChooseCanteenState();
}

class _ChooseCanteenState extends State<ChooseCanteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text("Choose Your Canteen",
                style: TextStyle(color: Colors.amber))),
        body: ListView(children: [
          Column(children: [
            Stack(children: [
              Positioned(
                  child: Image.network(
                'https://kmbedcollege.com/images/canteen.jpg',
                width: 550,
                fit: BoxFit.fitWidth,
              )),
              Positioned(
                  top: 100,
                  left: 170,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Menu();
                        }));
                      },
                      child: Text("MAIN CANTEEN",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))))
            ]),
            Stack(
              children: [
                Positioned(
                    child: Image.network(
                  'https://mgmsbsnm.edu.in/assets/img/canteen/canteen4.jpg',
                  width: 550,
                  fit: BoxFit.fitWidth,
                )),
                Positioned(
                    top: 150,
                    left: 170,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Menu();
                          }));
                        },
                        child: Text("NA CANTEEN",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold))))
              ],
            )
          ])
        ]));
  }
}
