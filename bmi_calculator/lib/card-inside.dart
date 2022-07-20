import 'package:bmi_calculator/consatnts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InnerCard extends StatelessWidget {




  
  InnerCard({this.innerIcons=FontAwesomeIcons.addressCard,this.label=''});
  final IconData innerIcons;
  final String label;
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Icon(
          innerIcons,size: 80.0,),
        SizedBox(height: 15.0,),


        Text(label,style: klabelofCardText,),

      ],
    );
  }
}
