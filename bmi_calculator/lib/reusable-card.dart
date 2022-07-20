
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget cardChild;
  final  onPress;
 ReusableCard({this.cardChild=const Text(''),required this.colour,required this.onPress});




  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        height: 200,
        width: 170,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: colour,
        ),
    
      ),
    );
  }
}

