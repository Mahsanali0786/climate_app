import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Roundediconbutton extends StatelessWidget {
  final IconData icon;
  final Roundedbtnpress;
  // ignore: non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Roundediconbutton({this.icon=FontAwesomeIcons.plus,this.Roundedbtnpress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: Roundedbtnpress,
      child: Icon(icon),
      fillColor: Colors.grey,
      shape:const CircleBorder(),
       constraints:  const BoxConstraints(minWidth: 50.0, minHeight: 50.0),
    );
  }
}