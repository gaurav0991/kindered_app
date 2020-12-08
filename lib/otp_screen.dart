import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/Untitled-1-19.png",
          height: 100,
          width: 120,
          fit: BoxFit.contain,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("   Otp sent to +9185886367",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 16)),
            SizedBox(
              height: 12,
            ),
            _boxBuilder(),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Resend OTP",
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(112, 112, 112, 1), fontSize: 17),
              ),
            ),
            Spacer(),
            Center(
              child: RaisedButton(
                onPressed: () {},
                padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: MediaQuery.of(context).size.width * 0.3,
                    right: MediaQuery.of(context).size.width * 0.3),
                child: Text("SUBMIT",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w600)),
                color: Color.fromRGBO(224, 59, 68, 1),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget _boxBuilder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _box(),
        _box(),
        _box(),
        _box(),
        _box(),
        _box(),
      ],
    );
  }

  Widget _box() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 3),
      alignment: Alignment.center,
      height: 50,
      width: 50,
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(border: InputBorder.none, counterText: ''),
      ),
      decoration: BoxDecoration(
          color: Color.fromRGBO(244, 244, 244, 1),
          border: Border.all(color: Color.fromRGBO(11, 11, 11, 0.47))),
    );
  }
}
