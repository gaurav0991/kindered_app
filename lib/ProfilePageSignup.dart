import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePageSignup extends StatefulWidget {
  @override
  _ProfilePageSignupState createState() => _ProfilePageSignupState();
}

class _ProfilePageSignupState extends State<ProfilePageSignup> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SvgPicture.asset(
          "assets/Untitled-1-19.svg",
          height: 100,
          width: 120,
          fit: BoxFit.contain,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  fillColor: Color.fromRGBO(244, 244, 244, 1),
                  filled: true,
                  hintText: "Enter Full Name",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                  fillColor: Color.fromRGBO(244, 244, 244, 1),
                  filled: true,
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Gender",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      selected = 0;
                    });
                  },
                  color: selected == 0
                      ? Colors.red
                      : Color.fromRGBO(244, 244, 244, 1),
                  child: Text(
                    "Male",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: selected == 0 ? Colors.white : Colors.black),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      selected = 1;
                    });
                  },
                  color: selected == 1
                      ? Colors.red
                      : Color.fromRGBO(244, 244, 244, 1),
                  child: Text(
                    "Female",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: selected == 1 ? Colors.white : Colors.black,
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      selected = 2;
                    });
                  },
                  color: selected == 2
                      ? Colors.red
                      : Color.fromRGBO(244, 244, 244, 1),
                  child: Text(
                    "Other",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: selected == 2 ? Colors.white : Colors.black),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Age",
                  style: GoogleFonts.poppins(),
                ),
                new DropdownButton<String>(
                  value: '20',
                  items: <String>['18', '19', '20', '21', '22', '23']
                      .map((String value) {
                    return new DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
