import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/3lotto.dart';
import 'package:kinderedecommerce/brands_listing.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showModal(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return FiltersBottom();
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
          leading: Icon(Icons.clear_all),
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
            Image.asset("assets/Untitled-1-17.png"),
            ListTile(
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
        width: 160,
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
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
              image: AssetImage(img),
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
      "arr": ["popularity", "Rating", "Cost: High to Low"],
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
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(children: [
              for (int i = 0; i < filters.length; i++)
                Container(
                  padding: EdgeInsets.all(7),
                  width: MediaQuery.of(context).size.width * 0.4,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(112, 112, 112, 0.1),
                      border: Border(
                          bottom: BorderSide(color: Colors.grey),
                          right: BorderSide(color: Colors.grey),
                          left: BorderSide(
                              width: selcted == i ? 10 : 1,
                              color: selcted == i
                                  ? Color.fromRGBO(212, 54, 47, 1)
                                  : Colors.grey))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      filters[i]["name"],
                      style: GoogleFonts.poppins(fontSize: 17),
                    ),
                  ),
                )
            ]),
            Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: Radio(
                  value: "a",
                  groupValue: 1,
                  onChanged: (e) {},
                ))
          ],
        ),
      ),
    );
  }
}
