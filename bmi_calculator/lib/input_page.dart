import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable-card.dart';
import 'card-inside.dart';




const comonBoxColor = Colors.black54;
const bottomContainerColor = const Color(0XFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body:Column(
        children:[
          Expanded(child: Row(children: [

            Expanded(child: ReusableCard(colour: comonBoxColor,
            cardChild:InnerCard(innerIcons: FontAwesomeIcons.mars,label: 'MALE',),
            
            ),),
            Expanded(child: ReusableCard(colour:  comonBoxColor,cardChild:InnerCard(innerIcons: FontAwesomeIcons.venus,label: 'FEMALE',),),),


          ],))
          ,
          Expanded(child: Row(children: [
            Expanded(child: ReusableCard(colour:  comonBoxColor,),),
            
          ],))
        ,
        Expanded(child: Row(children: [

            Expanded(child: ReusableCard(colour:  comonBoxColor,),),
            Expanded(child: ReusableCard(colour:  comonBoxColor,),),


          ],))
        
       ,Container(
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 80.0,
        color:bottomContainerColor,
       ),
        ] ,
      ),
    );
  }
}




