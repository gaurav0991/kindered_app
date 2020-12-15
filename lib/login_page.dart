import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/otp_screen.dart';
import 'package:kinderedecommerce/providers/LoginProvider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController t1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    final val = Provider.of<loginProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            FontAwesomeIcons.times,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/Untitled-1-19.png",
              height: 120,
              width: 140,
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromRGBO(155, 155, 155, 1))),
              padding: EdgeInsets.only(left: 12, right: 12),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.31,
                    child: CountryPickerDropdown(
                      iconSize: 20,
                      initialValue: 'in',
                      itemBuilder: _buildDropdownItem,
                      onValuePicked: (Country country) {
                        print("${country.name}");
                      },
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: t1,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                      ),
                      onChanged: (value) {
                        // this.phoneNo=value;
                        print(value);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          val.successfull == false
              ? Text(
                  "Error in the number",
                  style: GoogleFonts.poppins(color: Colors.red),
                )
              : Text(""),
          Spacer(),
          val.getLoading() == true
              ? CircularProgressIndicator()
              : RaisedButton(
                  onPressed: () async {
                    await val.getOtp(t1.text);
                    if (val.successfull == false) {
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => OtpScreen(phoneNumber: t1.text)));
                    }
                  },
                  padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: MediaQuery.of(context).size.width * 0.3,
                      right: MediaQuery.of(context).size.width * 0.3),
                  child: Text("Get OTP",
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.w600)),
                  color: Color.fromRGBO(224, 59, 68, 1),
                ),
          SizedBox(
            height: 10,
          ),
          Text(
            "By continuing you agree to our",
            style: GoogleFonts.poppins(
                color: Color.fromRGBO(20, 20, 20, 0.55), fontSize: 11.5),
          ),
          Text(
            "Terms of policy ,Privacy Policy and Content Policy",
            style: GoogleFonts.poppins(
                color: Color.fromRGBO(20, 20, 20, 0.55), fontSize: 11.5),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 3.0,
            ),
            Text("+${country.phoneCode}"),
          ],
        ),
      );
}
