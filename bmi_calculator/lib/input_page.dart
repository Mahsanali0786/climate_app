import 'package:flutter/material.dart';

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

            Expanded(child: ReusableCard(colour: Colors.blue,),),
            Expanded(child: ReusableCard(colour: Colors.blue,),),


          ],))
          ,
          Expanded(child: Row(children: [
            Expanded(child: ReusableCard(colour: Colors.blue,),),
            
          ],))
        ,
        Expanded(child: Row(children: [

            Expanded(child: ReusableCard(colour: Colors.blue,),),
            Expanded(child: ReusableCard(colour: Colors.blue,),),


          ],))
        
        ] ,
      ),
    );
  }
}



class ReusableCard extends StatelessWidget {

   Color colour;

 ReusableCard({required this.colour});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: colour,
      ),

    );
  }
}