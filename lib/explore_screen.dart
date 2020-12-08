import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<String> listOfImageUrl = [
    'https://images.unsplash.com/photo-1568967729548-e3dbad3d37e0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1490077476659-095159692ab5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1033&q=80',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1507617470622-e254a32975d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1557296387-5358ad7997bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=694&q=80',
    'https://images.unsplash.com/photo-1500111709600-7761aa8216c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1548661710-7f540c9c56d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1547244691-fc0b94515b69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1500485035595-cbe6f645feb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1518802508264-76256089cddb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1545167622-3a6ac756afa4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=656&q=80',
    'https://images.unsplash.com/photo-1524235325756-750277bf9ac6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1527838700789-f9b453e73655?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=619&q=80',
  ];

  List wid = [
    {"icon": FontAwesomeIcons.filter, "name": "Travel"},
    {"icon": FontAwesomeIcons.bookmark, "name": "Footwear"},
    {"icon": FontAwesomeIcons.crown, "name": "Accessories"},
    {"icon": FontAwesomeIcons.crown, "name": "Grooming"}
  ];
  @override
  Widget build(BuildContext context) {
    Size _screen = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(8),
      children: [
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.all(0),
          height: 50,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < wid.length; i++)
                  RaisedButton(
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      wid[i]["name"],
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(0, 0, 0, 0.64),
                          fontSize: 10,
                          letterSpacing: 0.1),
                    ),
                  ),
              ]),
        ),
        Container(
          padding: EdgeInsets.all(0),
          height: _screen.height,
          width: _screen.width,
          color: Colors.white,
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            padding: EdgeInsets.all(0),
            itemCount: listOfImageUrl.length,
            itemBuilder: (context, index) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    listOfImageUrl.elementAt(index),
                  ),
                ),
              ),
            ),
            staggeredTileBuilder: (index) =>
                StaggeredTile.count(2, index.isEven ? 2 : 1),
            mainAxisSpacing: 9,
            crossAxisSpacing: 10,
          ),
        ),
      ],
    ));
  }
}
