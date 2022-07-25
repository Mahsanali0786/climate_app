

import 'package:bmi_calculator/components/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/reusable-card.dart';
import '../components/card-inside.dart';
import '../components/consatnts.dart';
import '../components/roundiconbtn.dart';
import '../components/bottom_button.dart';
import 'package:bmi_calculator/bmi_brain.dart';

int weight = 60;
int height=180;
int age=19;
enum Gender { male, female, gay }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = kinactiveBoxcolor;
  Color femaleCardcolor = kinactiveBoxcolor;
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Height',
                        style: klabelofCardText,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,

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
                      SliderTheme(
                        // ignore: prefer_const_constructors
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor:
                              const Color.fromARGB(255, 190, 183, 183),
                          activeTrackColor: Colors.white,
                          thumbColor: Colors.pink,
                          overlayColor: const Color(0x29EB1555),
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0),
                          overlayShape: const RoundSliderOverlayShape(
                              overlayRadius: 30.0),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: kminimumvalueofslider.toDouble(),
                          max: kmaximumvalueofslider.toDouble(),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        ),
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
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Weight',
                          style: klabelofCardText,
                        ),
                        Text(
                          weight.toString(),
                          style: kmainheadingofcard,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Roundediconbutton(icon: FontAwesomeIcons.minus,Roundedbtnpress: (){
                            setState(() {
                             weight--; 
                            
                            });
                          },),
                          const SizedBox(width: 10.0,), 
                          Roundediconbutton(icon: FontAwesomeIcons.plus,Roundedbtnpress: (){
                            setState(() {
                             weight++; 
                            
                            });
                          },),
                        ],)
                      ]),
                  onPress: () {
                    //
                  },
                  colour: kinactiveBoxcolor,
                ),
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    const Text('Age',style: klabelofCardText,),
                    Text(age.toString(),style: kmainheadingofcard,),
                    Row(mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                      Roundediconbutton(icon: FontAwesomeIcons.minus,Roundedbtnpress: (){
                        setState(() {
                          age--;
                        });
                      },),
                      const SizedBox(width: 10.0,),
                       Roundediconbutton(icon: FontAwesomeIcons.plus,Roundedbtnpress: (){
                        setState(() {
                          age++;
                        });
                      },)
                    ],)
                  ]),
                  onPress: () {
                    //
                  },
                  colour: kinactiveBoxcolor,
                ),
              ),
              
            ],
          )),
         
         BottomButton(bottombuttonText: 'CALCULATE',bottombtnonTap: (){
            
          Bmi_brain calc = Bmi_brain(height: height, weight: weight);

          Navigator.push(context, MaterialPageRoute(builder: ((context) => Resultpage(bmiopinion: calc.ouropinion(),bmiresult: calc.bmiresult(),bmitext: calc.resultText(),))));
         },)
       
        ]
      ),
    );
  }
}

