import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/login_page.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
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
                height: 100,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.network(
                    "https://images.assettype.com/swarajya%2F2019-05%2F90984747-b2f3-4bd1-972b-08ce88fa4e2c%2Ffoodpanda.jpg?rect=0%2C4%2C278%2C156&w=640&q=75&auto=format%2Ccompress",
                    height: 120,
                    width: 120,
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
                    "John Doe",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500, fontSize: 21),
                  ),
                  Text(
                    "eli_johnson_12@gmail.com",
                    style: GoogleFonts.poppins(),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Level 11",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 16),
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
                            fontWeight: FontWeight.w400, fontSize: 15)),
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
                            fontWeight: FontWeight.w400, fontSize: 15)),
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
                            fontWeight: FontWeight.w400, fontSize: 15)),
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
                title: Text("Logout",
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
