import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  final Color colour;
  final Widget cardChild;

 ReusableCard({this.cardChild=const Text(''),required this.colour});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
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