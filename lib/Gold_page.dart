import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kinderedecommerce/ui/CloseGold.dart';
import 'package:kinderedecommerce/ui/LevelBar.dart';
import 'package:rive/rive.dart';
import 'package:flare_flutter/flare_actor.dart';

class GoldPage extends StatefulWidget {
  @override
  _GoldPageState createState() => _GoldPageState();
}

class _GoldPageState extends State<GoldPage> {
  void _togglePlay() {
    setState(() => _controller.isActive = !_controller.isActive);
  }

  /// Tracks if the animation is playing by whether controller is running.
  bool get isPlaying => _controller?.isActive ?? false;

  Artboard _riveArtboard;
  RiveAnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/backgroundclosely-04.png"),
              fit: BoxFit.fill),
        ),
        child: Container(
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              // Center(
              //   child: Container(
              //     height: 100,
              //     width: 90,
              //     child: FlareActor(
              //       "assets/panda.flr",
              //       shouldClip: false,
              //       alignment: Alignment.bottomCenter,
              //       fit: BoxFit.contain,
              //     ),
              //   ),
              // ),

              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Center(
                    child: Stack(children: [
                      Image.asset(
                        "assets/CloseGold.png",
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: MediaQuery.of(context).size.width * 0.7,
                        fit: BoxFit.fill,
                        alignment: Alignment.center,
                      ),
                      Positioned.fill(
                          bottom: 45,
                          left: MediaQuery.of(context).size.width * 0.15,
                          right: MediaQuery.of(context).size.width * 0.15,
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: levelBar(
                              level: "12",
                              height:
                                  MediaQuery.of(context).size.height * 0.034,
                              width: MediaQuery.of(context).size.width * 0.3,
                            ),
                          ))
                      //   Image.asset(a
                      //     "assets/Untitled-1-16.png",
                      //     height: MediaQuery.of(context).size.height * 0.42,
                      //     width: MediaQuery.of(context).size.width * 0.90,
                      //     fit: BoxFit.fill,
                      //   ),
                      //   Positioned(
                      //       top: MediaQuery.of(context).size.height * 0.29,
                      //       left: MediaQuery.of(context).size.width * 0.25,
                      //       right: MediaQuery.of(context).size.width * 0.30,
                      //       child: levelBar(
                      //         height: MediaQuery.of(context).size.height * 0.09,
                      //         level: "10",
                      //       ))
                      // ],
                    ]),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Center(
                  child: RaisedButton(
                onPressed: () {},
                padding:
                    EdgeInsets.only(left: 45, right: 45, top: 15, bottom: 15),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                        color: Color.fromRGBO(240, 202, 87, 1), width: 6)),
                child: Text(
                  "BENIFITS",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
                color: Color.fromRGBO(235, 38, 38, 1),
              )),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Box(), Box(), Box()]),
              //Untitled-1-18.png
              SizedBox(height: 10),
              Center(
                  child: RaisedButton(
                onPressed: () {},
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 12, bottom: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(
                        color: Color.fromRGBO(240, 202, 87, 1), width: 6)),
                child: Text(
                  "HOW TO EARN",
                  style: GoogleFonts.poppins(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                color: Color.fromRGBO(235, 38, 38, 1),
              )),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 5, right: 5),
                height: MediaQuery.of(context).size.height * 0.3,
                child: GridView.count(
                    crossAxisCount: 2,
                    physics: NeverScrollableScrollPhysics(),
                    childAspectRatio: 2.5,
                    padding: const EdgeInsets.all(4.0),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 12.0,
                    children: [
                      Icons.rate_review,
                      Icons.photo,
                      Icons.store,
                      Icons.share
                    ].map((url) {
                      return GridTile(child: DownBox());
                    }).toList()),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class DownBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5, top: 0, bottom: 0),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFF).withOpacity(0.8),
          borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        title: Text(
          "Order using CLOSE",
          style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          "\$1=1xp",
          style: GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w700),
        ),
        trailing: Image.asset("assets/Untitled-1-12.png"),
      ),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color(0xFFFFFF).withOpacity(0.8),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            "Extra dicsount",
            style:
                GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),
          ),
          Text(
            "Voucher",
            style:
                GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w500),
          ),
          Text(
            "Upto 50%",
            style:
                GoogleFonts.poppins(fontSize: 13, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 6),
          ButtonTheme(
            child: RaisedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Image.asset("assets/Untitled-1-20.png"),
                  Text(
                    "2",
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                ],
              ),
              padding: EdgeInsets.all(0),
              color: Color.fromRGBO(141, 141, 141, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(width: 0.1)),
            ),
          )
        ],
      ),
    );
  }
}
