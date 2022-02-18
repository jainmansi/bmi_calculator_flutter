import 'package:flutter/material.dart';

class ReusableCard extends StatefulWidget {
  ReusableCard({@required this.color, this.cardChild, this.onPress});
  final Color color;
  final Widget cardChild;
  final Function onPress;
  @override
  _ReusableCardState createState() => _ReusableCardState();
}

class _ReusableCardState extends State<ReusableCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        child: widget.cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}


