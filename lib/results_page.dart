import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'ReusableCard.dart';
import 'Bottom_Button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.message,
      @required this.result});

  final String bmiResult;
  final String result;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Your Result",
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "$result",
                      style: kHealthStatusStyle,
                    ),
                    Text(
                      "$bmiResult",
                      style: kTitleTextStyle,
                    ),
                    Center(
                      child: Text(
                        "$message",
                        style: kResultStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                title: 'RE-CALCULATE'),
          ),
        ],
      ),
    );
  }
}
