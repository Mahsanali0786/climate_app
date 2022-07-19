import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InnerCard extends StatelessWidget {


static const labelofCardText = TextStyle(fontSize: 18.0,color: Color(0xFF8D8E98));

  
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


        Text(label),

      ],
    );
  }
}
