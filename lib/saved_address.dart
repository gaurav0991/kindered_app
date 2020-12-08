import 'package:flutter/material.dart';

class Address_saved extends StatefulWidget {
  @override
  _Address_savedState createState() => _Address_savedState();
}

class _Address_savedState extends State<Address_saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Text("Saved Address"),
        SizedBox(height: 10),
        Container(
          color: Color.fromRGBO(245, 245, 245, 1),
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListTile(),
        )
      ],
    ));
  }
}
