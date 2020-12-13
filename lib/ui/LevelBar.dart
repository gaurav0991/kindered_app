import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_ribbon/floating_ribbon.dart';

class levelBar extends StatefulWidget {
  final level, rate, height, width;

  const levelBar({Key key, this.level, this.rate, this.height, this.width})
      : super(key: key);
  @override
  _levelBarState createState() => _levelBarState();
}

class _levelBarState extends State<levelBar>
    with SingleTickerProviderStateMixin {
  Animation anim;
  AnimationController _animationController;
  Animation _animation;
  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    anim = CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutCubic);
    _animation = Tween(begin: 0.0, end: widget.width * 0.3).animate(anim)
      ..addListener(() {
        setState(() {});
      });
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Stack(
        children: [
          Positioned(
              child: Container(
            height: widget.height,
            width: widget.width,
            child: Row(
              children: [
                Container(
                  width: _animation.value,
                  color: Color.fromRGBO(255, 243, 74, 1),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Color.fromRGBO(109, 44, 0, 1),
                border:
                    Border.all(color: Color.fromRGBO(216, 144, 0, 1), width: 5),
                borderRadius: BorderRadius.circular(20)),
          )),
          Positioned(
            child: Container(
              height: widget.height,
              width: widget.width * 0.3,
              child: Center(
                  child: Text(widget.level,
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.bold))),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(240, 55, 49, 1),
                  border: Border.all(
                      color: Color.fromRGBO(216, 144, 0, 1), width: 5),
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
