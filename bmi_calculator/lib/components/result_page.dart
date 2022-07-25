
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/consatnts.dart';
import 'package:bmi_calculator/components/reusable-card.dart';

// ignore: must_be_immutable
class Resultpage extends StatelessWidget {
  String bmiopinion;
  String bmitext;
  String bmiresult;
  // ignore: use_key_in_widget_constructors
  Resultpage({required this.bmiresult,required this.bmitext,required this.bmiopinion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.all(15.0),

              child: const Text(
            'Your Result',
            style: kresultheadingText,
            textAlign: TextAlign.start,
          )),
          Expanded(
              flex: 5,
              child: ReusableCard(
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Text(bmitext.toUpperCase(),style: kresultcardText,),
                    Text(bmiresult.toUpperCase(),style: kresultcardweightText,),
                    Text(bmiopinion,style: kresultbodyText,textAlign:TextAlign.center  ,),

                  ],
                ),
                colour: const Color.fromARGB(122, 77, 75, 75),
                onPress: () {
                  // 
                },
              )),

              BottomButton(bottombuttonText: 'RE-CALCULATE', bottombtnonTap:(){
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
