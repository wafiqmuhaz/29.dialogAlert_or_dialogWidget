// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class myHome extends StatefulWidget {
  @override
  State<myHome> createState() => _myHomeState();
}

class _myHomeState extends State<myHome> {
  String myData = "APAKAH ANDA YAKIN ?!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Widget"),
      ),
      body: Center(
        child: Text(myData),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text("Apakah anda yakin ingin menghapusnya?"),
                title: Text("Yakin?!"),
                actions: <ElevatedButton>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myData = "YESSSSSS!!!!";
                        print("OHH YEAHHH");
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text("YES!"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        myData = "NOOOOOOOHHH!!!!";
                        print("OHH TIDAKK");
                        Navigator.of(context).pop();
                      });
                    },
                    child: Text("NO!"),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.delete),
      ),
    );
  }
}
