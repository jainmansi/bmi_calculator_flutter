import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class genderCard extends StatefulWidget {
  final String gender;

  genderCard({@required this.gender});

  @override
  _genderCardState createState() => _genderCardState();
}

class _genderCardState extends State<genderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              (widget.gender == "MALE") ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
              size: 80.0,
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              widget.gender,
              style: kLabelTextStyle,
            )
          ],
        ));
  }
}