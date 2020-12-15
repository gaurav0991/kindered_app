import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandPage extends StatefulWidget {
  @override
  _BrandPageState createState() => _BrandPageState();
}

class _BrandPageState extends State<BrandPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.only(left: 1),
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.337,
              child: Stack(
                children: [
                  Image.network(
                    "https://images.pexels.com/photos/19090/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Positioned(
                    left: 20,
                    top: MediaQuery.of(context).size.height * 0.20,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          "assets/balance.png",
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: ListTile(
                trailing: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        FontAwesomeIcons.crown,
                        color: Color(0xffFFF780),
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Close Gold",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                leading: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 30,
                  child: Row(children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        Icons.stars_sharp,
                        color: Colors.black,
                        size: 18,
                      ),
                    SizedBox(
                      width: 4,
                    ),
                    Text("4.1",
                        style: GoogleFonts.poppins(
                            height: 1.2,
                            fontSize: 17,
                            fontWeight: FontWeight.w600))
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "128 reviews",
                    style: GoogleFonts.poppins(fontSize: 11.5),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "View Photos",
                    style: GoogleFonts.poppins(fontSize: 11.5),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("New Balance",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 19, fontWeight: FontWeight.w500)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text("Casual Wear - Men,Women",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w300)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Shoes,Clothing",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.poppins(
                      fontSize: 15, fontWeight: FontWeight.w300)),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("All Pincode serviceable",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                        fontSize: 12.2, fontWeight: FontWeight.w300))),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    Icon(
                      FontAwesomeIcons.rupeeSign,
                      color: Colors.black,
                      size: 15,
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Avg Price : £7.8",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w600)),
                  new Spacer(), // I just added one line

                  Icon(
                    Icons.mail_outline,
                    color: Colors.red,
                    size: 19.5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.phone_outlined,
                    color: Colors.red,
                    size: 19.5,
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            new Divider(
              color: Colors.black45,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.26,
              padding: EdgeInsets.all(7),
              child: GridView.count(
                  crossAxisCount: 2,
                  physics: NeverScrollableScrollPhysics(),
                  childAspectRatio: 2.3,
                  padding: const EdgeInsets.all(4.0),
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 3.0,
                  children: [
                    {"icon": Icons.rate_review, "name": "Review"},
                    {"icon": Icons.photo, "name": "Pics"},
                    {"icon": Icons.store, "name": "Store"},
                    {"icon": Icons.share, "name": "Share"}
                  ].map((url) {
                    return GridTile(
                        child: Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(26)),
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                elevation: 6,
                                child: ListTile(
                                    subtitle: Text(
                                      "+50 xp",
                                      style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Icon(
                                      url["icon"],
                                      color: Color.fromRGBO(41, 41, 41, 1),
                                    ),
                                    title: Text(
                                      url["name"],
                                      style: GoogleFonts.poppins(),
                                    )))));
                  }).toList()),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 13.0, right: 13),
                child: Stack(children:[
                  SvgPicture.asset("assets/order.svg"),
                  
                  Positioned(left:10,top:20,child:Text("Order Item from this Store",style:GoogleFonts.poppins(color:Colors.white,fontSize:16))),
                  Positioned(left:10,top:40,child:Text("Start building your cart",style:GoogleFonts.poppins(color:Colors.white,fontSize:14))),
                  Positioned(left:10,top:60,child:Text("+50xp",style:GoogleFonts.poppins(color:Colors.white,fontSize:14))),

                  
                  ])),
            new Divider(
              color: Colors.black45,
            ),
            Column(children: [
              Text("Close Gold benifits",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600)),
              ListTile(
                trailing: ButtonTheme(
                  height: 25,
                  child: RaisedButton(
                    padding: EdgeInsets.all(4),
                    color: Color.fromRGBO(235, 66, 63, 1),
                    onPressed: () {},
                    child: Text(
                      "Unlock",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                  ),
                ),
                leading: Icon(FontAwesomeIcons.bold),
                title: Text(
                  "40% off upto Rs400",
                  style: GoogleFonts.poppins(),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}

class Iconslist extends StatelessWidget {
  final icon, name;
  const Iconslist({
    Key key,
    this.icon,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 18,
          color: Color.fromRGBO(0, 0, 0, 0.6423),
        ),
        SizedBox(
          height: 4,
        ),
        Text(name)
      ],
    );
  }
}
