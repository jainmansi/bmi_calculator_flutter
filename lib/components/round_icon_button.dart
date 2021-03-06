import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RawMaterialButton(
        child: (Icon(icon)),
        fillColor: Color(0xFF4C4F5E),
        shape: CircleBorder(),
        elevation: 6.0,
        onPressed: onPressed,
        constraints: BoxConstraints.tightFor(
          width: 56.0,
          height: 56.0,
        ),
      ),
    );
  }
}