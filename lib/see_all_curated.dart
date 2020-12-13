import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Curated_see_all extends StatefulWidget {
  @override
  _Curated_see_allState createState() => _Curated_see_allState();
}

class _Curated_see_allState extends State<Curated_see_all> {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            for (int i = 0; i < curatedlist.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(curatedlist[i]["name"],
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                backgroundColor: Colors.black.withOpacity(0.1),
                                fontWeight: FontWeight.bold)),
                        Text(curatedlist[i]["subtitle"],
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                backgroundColor: Colors.black.withOpacity(0.1),
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                    height: MediaQuery.of(context).size.height * 0.23,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                          image: AssetImage(curatedlist[i]["image"]),
                          fit: BoxFit.fill,
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.91),
                              BlendMode.dstATop)),
                    )),
              )
          ],
        ),
      ),
    );
  }
}
