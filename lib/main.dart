// ignore_for_file: invalid_language_version_override
//@dart=2.9
import 'package:flutter/material.dart';
import 'package:gla/Menu.dart';
import 'package:gla/Signup.dart';
import 'HomeScreen.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: login(),
    //home:Signup(),
    home: HomeScreen(),
    //home: Menu(),
  ));
}
