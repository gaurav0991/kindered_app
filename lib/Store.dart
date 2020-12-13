import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/BrandPage.dart';

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List color = [Colors.red, Colors.lightGreen, Colors.lightBlue];
  var rng = new Random();

  List stores = [
    {
      "name": "Food",
      "icon": Icons.restaurant,
      "items": [
        {
          "name": "Orinko",
          "image":
              "https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/6a8f346a69f2b2fe4489"
        },
        {
          "name": "Open Secret",
          "image":
              "https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/6a8f346a69f2b2fe4489"
        },
        {
          "name": "Oziva",
          "image":
              "https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/6a8f346a69f2b2fe4489"
        },
        {
          "name": "Oziva",
          "image":
              "https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/6a8f346a69f2b2fe4489"
        },
        {
          "name": "Oziva",
          "image":
              "https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/6a8f346a69f2b2fe4489"
        }
      ]
    },
    {
      "name": "Jewellery",
      "icon": FontAwesomeIcons.gem,
      "items": [
        {
          "name": "Orinko",
          "image":
              "https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/6a8f346a69f2b2fe4489"
        },
        {
          "name": "Open Secret",
          "image":
              "https://res-3.cloudinary.com/crunchbase-production/image/upload/c_lpad,h_256,w_256,f_auto,q_auto:eco/6a8f346a69f2b2fe4489"
        },
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 35, left: 12, right: 12),
        children: [
          for (int i = 0; i < stores.length; i++)
            Container(
                color: Color(0xffF5F5F5),
                height: MediaQuery.of(context).size.height * 0.48,
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    ListTile(
                      leading: Icon(
                        stores[i]["icon"],
                        color: Colors.pink,
                      ),
                      title: Text(
                        stores[i]["name"],
                        style: GoogleFonts.poppins(
                            fontSize: 19, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.38,
                      child: GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        children: <Widget>[
                          // for (int j = 0; j < stores[i]["items"].length; i++)
                          //   Container(
                          //       padding: const EdgeInsets.all(8), child: Column()),
                          for (var item in stores[i]["items"])
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) => BrandPage()));
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(4),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 66,
                                        height: 66,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    item["image"])),
                                            border: Border.all(
                                                color: color[rng.nextInt(3)]),
                                            borderRadius:
                                                BorderRadius.circular(35)),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(item["name"])
                                    ],
                                  )),
                            ),
                        ],
                      ),
                    ),
                  ],
                ))
        ],
      ),
    );
  }
}
