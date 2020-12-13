import 'package:floating_ribbon/floating_ribbon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/ui/LevelBar.dart';

class closeGold extends StatefulWidget {
  final height, width;

  const closeGold({Key key, this.height, this.width}) : super(key: key);
  @override
  _closeGoldState createState() => _closeGoldState();
}

class _closeGoldState extends State<closeGold> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 198,
      width: widget.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 10, color: Color.fromRGBO(158, 64, 0, 1)),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(236, 77, 147, 1),
            Color.fromRGBO(176, 8, 115, 1)
          ])),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 37,
              width: 95,
              child: Center(
                child: Text(
                  "Hi John!",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(109, 44, 0, 1),
                  border: Border.all(
                      color: Color.fromRGBO(216, 144, 0, 1), width: 5),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 37,
                  child: Center(
                    child: Text(
                      "Score : 195",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                  width: 110,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(109, 44, 0, 1),
                      border: Border.all(
                          color: Color.fromRGBO(216, 144, 0, 1), width: 5),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Container(
                  height: 37,
                  width: 110,
                  child: Center(
                    child: Text(
                      "Savings  : 23",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(109, 44, 0, 1),
                      border: Border.all(
                          color: Color.fromRGBO(216, 144, 0, 1), width: 5),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: levelBar(
                width: 180.0,
                height: MediaQuery.of(context).size.height * 0.09,
                level: "10",
              ),
            )
          ]),
    );
  }
}
