import 'package:flutter/material.dart';
import '../constants.dart';

class calculateButton extends StatelessWidget {

  final Function onPress;
  final String buttonTitle;

  calculateButton({@required this.onPress, @required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(buttonTitle, style: kLargeButtonStyle)
        ),
        color: kBottomCardColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}