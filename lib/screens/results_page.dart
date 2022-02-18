import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/calculate_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiValue;
  final String bmiResult;
  final String resultInterpretation;
  ResultsPage({this.bmiValue, this.bmiResult, this.resultInterpretation});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15.0, left: 10.0),
                alignment: Alignment.bottomLeft,
                child: Text(
            'Your Results',
            style: kTitleText,
          ),
              )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiResult, style: kResultTextStyle),
                  Text(bmiValue, style: kExtraLargeNumber),
                  Text(
                    resultInterpretation,
                    style: kBodyText,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Expanded(child: calculateButton(
            onPress: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ))
        ],
      ),
    );
  }
}
