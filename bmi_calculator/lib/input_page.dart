import 'package:flutter/material.dart';

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

            Expanded(child: ReusableCard(colour: comonBoxColor,),),
            Expanded(child: ReusableCard(colour:  comonBoxColor,),),


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



class ReusableCard extends StatelessWidget {

  final Color colour;

 ReusableCard({required this.colour});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: colour,
      ),

    );
  }
}