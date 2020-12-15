import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinderedecommerce/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToDiff();
  }

  void navigateToDiff() async {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyApp(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(body:Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit:BoxFit.fill,
                    image: AssetImage("assets/backSplash.png",))),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 25.0, sigmaY: 25.0),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.25)),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                  SizedBox(height:30),
                    SvgPicture.asset("assets/Untitled-1-19.svg"),
                    Spacer(),
                    SvgPicture.asset("assets/Splashscreen.svg"),
                    Spacer(),
                    Text("Explore and shop from",style:GoogleFonts.poppins(fontSize:20)),
                    Text("The best brands from India",style:GoogleFonts.poppins(color:Colors.white,fontSize:20)),
                    SizedBox(height:20)

                  
                  ],
                ),
              ),
            ))));
  }
}
