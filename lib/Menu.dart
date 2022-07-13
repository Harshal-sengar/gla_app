// ignore_for_file: unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int no_of_order = 0;
  String menuItems = "";
  var intialValue = 0.0;
  bool _isPaid = false;
  bool _cod = false;
  String selected = "";
  String final_bill = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Menu",
              style: TextStyle(
                  //backgroundColor: Colors.black,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold))),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Select Your Orders", style: TextStyle(fontSize: 20)),
          ),
          CheckboxGroup(
            labels: [
              "Pinner Tikka",
              "Pizza",
              "Burger",
              "Alo Pratha",
              "Tea",
              "Coffee",
              "Butter Naan",
              "Alo Patees",
            ],
            onSelected: (List<String> menu) {
              no_of_order = menu.length;
              setState(() {
                menuItems = menu.toString();
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text("Select Quantity: ", style: TextStyle(fontSize: 20)),
              Slider(
                value: intialValue,
                onChanged: (newQty) {
                  setState(() {
                    intialValue = newQty;
                  });
                  print('Quantity: $intialValue');
                },
                min: 0,
                max: 10,
                divisions: 10,
                label: '$intialValue',
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Text('Payment Status: ',
                    style: TextStyle(
                      fontSize: 22,
                    )),
                Switch(
                    value: _isPaid,
                    onChanged: (bool status) {
                      setState(() {
                        _isPaid = status;
                      });
                      print('Payment Status: $_isPaid');
                    }),
                Text(
                  _isPaid ? "Yes" : "No",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Text('Go for CashOnDelivery: ',
                    style: TextStyle(
                      fontSize: 22,
                    )),
                Checkbox(
                  value: _cod,
                  onChanged: (b) {
                    setState(() {
                      _cod = b!;
                    });
                  },
                ),
                Text(
                  _cod ? "COD" : "Online",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ElevatedButton(
                onPressed: () {
                  showPreview(context);
                },
                child: Text(
                  "Preview Order",
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: BottomNavigationBar(
              // ignore: prefer_const_literals_to_create_immutables
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                // BottomNavigationBarItem(
                //     icon: Icon(Icons.info_rounded), label: "About"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.food_bank), label: "Orders"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.man), label: "Profile"),
              ],
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              fixedColor: Colors.black, // when selected
              //currentIndex: selectedItem,
            ),
          )
        ],
      ),
    );
  }

  void showPreview(BuildContext context) {
    final_bill = _bill();
    var alertDialog = CupertinoAlertDialog(
      title: Text(
        'Order Status',
        style: TextStyle(
            color: Color.fromARGB(255, 220, 19, 19),
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 28),
      ),
      content: Column(
        children: [
          Text('Items: $menuItems \nQuantity: $intialValue'),
          Text("\n Final Bill: $final_bill"),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'S2');
                },
                child: Text("Pay")),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Change Order"))
          ],
        )
      ],
    );
    showDialog(
        context: context,
        builder: (context) {
          return alertDialog;
        });
  }

  String _bill() {
    double n = intialValue;
    int t = no_of_order;
    double? totalAmount;
    print(n);
    print(t);
    totalAmount = n * (25 + t);
    String bill = "$totalAmount";
    return bill;
  }
}
