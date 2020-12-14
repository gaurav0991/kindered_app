import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/login_page.dart';

import 'db/DB.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSignIn = DB.box.get(DB.isSignIn) ?? false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0.4,
      ),
      body: Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 22, left: 10, right: 10),
          children: [
            SizedBox(
              height: 15,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(
                height: 88,
                width: 90,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    isSignIn == false
                        ? "https://www.searchpng.com/wp-content/uploads/2019/02/Men-Profile-Image-715x657.png"
                        : "https://cdn.fastly.picmonkey.com/contentful/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=800&q=70",
                    height: 100,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    isSignIn == false ? "Guest" : "John Doe",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, fontSize: 17),
                  ),
                  Text(
                    isSignIn == false
                        ? "guest12@email.com"
                        : "eli_johnson_12@gmail.com",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300, fontSize: 14),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        isSignIn == false ? "Guest" : "Level 11",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 15),
                      ),
                      color: Color(0xffF03731),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
            ]),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 0.27)),
                          right: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 0.27)),
                          bottom: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 0.27)))),
                  width: MediaQuery.of(context).size.width * 0.31,
                  child: Row(children: [
                    Icon(Icons.directions, size: 20),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Addresses",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                  ]),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 0.27)),
                          bottom: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 0.27)))),
                  width: MediaQuery.of(context).size.width * 0.32,
                  child: Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.card_membership_sharp),
                    SizedBox(
                      width: 7,
                    ),
                    Text("Payments",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                  ]),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 0.27)),
                          left: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 0.27)),
                          bottom: BorderSide(
                              color: Color.fromRGBO(112, 112, 112, 0.27)))),
                  width: MediaQuery.of(context).size.width * 0.32,
                  child: Row(children: [
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.shopping_bag),
                    SizedBox(
                      width: 6,
                    ),
                    Text("Orders",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, fontSize: 14)),
                  ]),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.45,
              child: ListTile(
                title: Text("Support", style: GoogleFonts.poppins()),
                leading: Icon(Icons.support),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.45,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginPage()));
                },
                title: Text(isSignIn == false ? "Login" : "Logout",
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(240, 55, 49, 1),
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.exit_to_app,
                  color: Color.fromRGBO(240, 55, 49, 1),
                ),
              ),
            ),
            SizedBox(
              height: 220,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text("Made with ❤ in India"),
            )
          ],
        ),
      ),
    );
  }
}
//
