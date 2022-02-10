// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors

import "package:flutter/material.dart";
import './myHome.dart';

void main() {
  runApp(app());
}

class app extends StatefulWidget {
  @override
  _appState createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myHome(),
    );
  }
}
