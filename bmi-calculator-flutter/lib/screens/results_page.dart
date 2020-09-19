import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.bmiresult, @required this.interpretation, @required this.resultText});

  final String bmiresult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Color(0xFF0A0E21),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),style: TextStyle(color: Color(0xFF24D876),fontSize: 22.0,fontWeight: FontWeight.bold),),
                  Text(bmiresult,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 100.0)),
                  Text(interpretation,style:TextStyle(fontSize: 22.0),textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(label: 'RE-CALCULATE BMI',onTap: (){ Navigator.pop(context);},),
        ],
      ),
    );
  }
}
