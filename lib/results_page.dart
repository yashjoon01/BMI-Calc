import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/resusableCard.dart';
import 'package:flutter/material.dart';
import 'Constants.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretaion;

  ResultPage({this.bmiResult, this.interpretaion, this.resultText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  'Your Result',
                  style: kStyleBottomBar.copyWith(fontSize: 50.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseCard(
                colour: activeColor,
                reuseChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kStyleText1.copyWith(
                        color: Colors.green,
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: kStyleBottomBar.copyWith(fontSize: 100.0),
                    ),
                    Text(
                      interpretaion,
                      style: kStyleText,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 20.0),
                margin: EdgeInsets.only(top: 10.0),
                color: colorBar,
                width: double.infinity,
                height: kBottomBarHeight,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kStyleBottomBar,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
