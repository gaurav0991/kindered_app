import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StarsWidget extends StatelessWidget {
  final count;

  const StarsWidget({Key key, this.count}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < count; i++)
          Icon(
            Icons.stars_sharp,
            color: Colors.black,
            size: 20,
          )
      ],
    );
  }
}
