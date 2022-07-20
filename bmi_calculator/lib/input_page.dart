import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable-card.dart';
import 'card-inside.dart';
import 'consatnts.dart';

enum Gender { male, female, gay }

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kinactiveBoxcolor;
  Color femaleCardcolor = kinactiveBoxcolor;
  int height=180;
  Gender selectedGender = Gender.gay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kactiveBoxcolor
                      : kinactiveBoxcolor,
                  cardChild: InnerCard(
                    innerIcons: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kactiveBoxcolor
                      : kinactiveBoxcolor,
                  cardChild: InnerCard(
                    innerIcons: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: [
                      const Text(
                        'Height',
                        style: klabelofCardText,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline:TextBaseline.alphabetic,
                        
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                           Text(
                            height.toString(),
                            style: kmainheadingofcard,
                          ),
                          const Text(
                            'cm',
                            style: klabelofCardText,
                          )
                        ],
                      ),
                      Slider(
                        value:height.toDouble(),
                      min: kminimumvalueofslider.toDouble(),
                      max: kmaximumvalueofslider.toDouble(),
                      activeColor: Colors.pink,
                      inactiveColor: Color.fromARGB(255, 190, 183, 183),
                      onChanged: (double newValue){
                        setState(() {
                          height=newValue.round();
                        });
                      },
                      
                      )

                    ],
                  ),
                  onPress: () {
                    //
                  },
                  colour: kinactiveBoxcolor,
                ),
              ),
            ],
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    //
                  },
                  colour: kinactiveBoxcolor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onPress: () {
                    //
                  },
                  colour: kinactiveBoxcolor,
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
            color: kbottomContainerColor,
          ),
        ],
      ),
    );
  }
}
