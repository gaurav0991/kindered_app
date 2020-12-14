import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/3lotto.dart';
import 'package:kinderedecommerce/brands_listing.dart';
import 'package:kinderedecommerce/see_all_curated.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget ig(img) {
    final Widget svg = new SvgPicture.asset(img);
    return svg;
  }

  void _showModal(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        elevation: 20,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.75,
              child: FiltersBottom());
        });
  }

  List wid = [
    {"icon": FontAwesomeIcons.filter, "name": "Filters"},
    {"icon": FontAwesomeIcons.bookmark, "name": "Bookmarks"},
    {"icon": FontAwesomeIcons.crown, "name": "Close Gold"}
  ];
  List curatedlist = [
    {
      "image": "assets/speaker.png",
      "name": "Men Grooming",
      "subtitle": "58 brands"
    },
    {"image": "assets/b.png", "name": "Audio", "subtitle": "58 brands"},
    {"image": "assets/b.png", "name": "Audio", "subtitle": "58 brands"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.red,
          elevation: 20,
          title: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(20.0),
                    ),
                  ),
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.black54, height: 3.2, fontSize: 16),
                  hintText: "Search Brand,Category,Style",
                  fillColor: Colors.white),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(0),
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for (int i = 0; i < wid.length; i++)
                      GestureDetector(
                        onTap: () {
                          _showModal(context);
                        },
                        child: DecoratedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 14.0, right: 14, top: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  wid[i]["icon"],
                                  color: Colors.black26,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Text(
                                  wid[i]["name"],
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.poppins(
                                      color: Colors.black38,
                                      fontSize: 15,
                                      letterSpacing: 0.1),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(color: Colors.black26)),
                        ),
                      )
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: Carousel(
                  images: [
                    NetworkImage(
                      'https://5.imimg.com/data5/LD/LO/ME/ANDROID-82831093/product-jpeg-500x500.jpg',
                    ),
                    NetworkImage(
                        'https://5.imimg.com/data5/LD/LO/ME/ANDROID-82831093/product-jpeg-500x500.jpg'),
                    NetworkImage(
                      'https://5.imimg.com/data5/LD/LO/ME/ANDROID-82831093/product-jpeg-500x500.jpg',
                    ),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.lightGreenAccent,
                  indicatorBgPadding: 5.0,
                  borderRadius: true,
                  radius: Radius.circular(16),
                )),
            SizedBox(
              height: 20,
            ),
            Text("  Spin and Discover",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700, fontSize: 17)),
            // threelottowinn(),
            SvgPicture.asset("assets/Untitled-1-17.svg"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  color: Color.fromRGBO(176, 8, 115, 1),
                  child: Text("Spin",
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Color.fromRGBO(255, 246, 65, 1))),
                ),
                Container()
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Curated_see_all()));
                },
                title: Text("Curated Collections",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 17.6)),
                trailing: Text(
                  "See all",
                  style: GoogleFonts.poppins(
                      color: Colors.blue, fontWeight: FontWeight.w600),
                )),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: curatedlist
                    .map((e) => Curated(
                          img: e["image"],
                          name: e["name"],
                          sub: e["subtitle"],
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Curated extends StatelessWidget {
  final img, name, sub;

  const Curated({Key key, this.img, this.name, this.sub}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => Brand_Listing()));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.all(6),
        width: 140,
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w600)),
            Text(
              sub,
              style: GoogleFonts.poppins(color: Colors.white),
            )
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1570676771375-b64465bfce92?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.91), BlendMode.dstATop),
            )),
      ),
    );
  }
}

//
class FiltersBottom extends StatefulWidget {
  @override
  _FiltersBottomState createState() => _FiltersBottomState();
}

class _FiltersBottomState extends State<FiltersBottom> {
  int selcted = 0;
  List filters = [
    {
      "name": "Sort by",
      "arr": ["Popularity", "Rating", "Cost: High to Low"],
      "selected": true
    },
    {
      "name": "Suitable for",
      "arr": ["13-18", "15-19", "30-45"],
      "selected": false
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 5,
        title: Text("Sort and Filters",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500, color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          border: Border(
                        right: BorderSide(
                            color: Color.fromRGBO(112, 112, 112, 0.3)),
                      )),
                      child: Column(children: [
                        for (int i = 0; i < filters.length; i++)
                          GestureDetector(
                            onTap: () {
                              selcted = i;
                              setState(() {});
                            },
                            child: Container(
                              padding: EdgeInsets.all(7),
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(245, 245, 245, 1),
                                  border: Border(
                                      left: BorderSide(
                                          width: selcted == i ? 7 : 1,
                                          color: selcted == i
                                              ? Color.fromRGBO(212, 54, 47, 1)
                                              : Colors.grey))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  filters[i]["name"],
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.5,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          )
                      ]),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Column(
                          children: [
                            for (int i = 0;
                                i < filters[selcted]["arr"].length;
                                i++)
                              Row(
                                children: [
                                  Radio(
                                    value: "a",
                                    groupValue: 1,
                                    onChanged: (e) {},
                                  ),
                                  Text(
                                    filters[selcted]["arr"][i],
                                    style: GoogleFonts.poppins(),
                                  )
                                ],
                              ),
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Clear All",
                      style: GoogleFonts.poppins(fontSize: 15),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      child: Text(
                        "Apply",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 15),
                      ),
                      color: Color.fromRGBO(212, 54, 47, 1),
                    )
                  ],
                ),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black26)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
