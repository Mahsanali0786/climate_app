import 'package:flutter/material.dart';
import 'consatnts.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.bottombuttonText,required this.bottombtnonTap});
  final String bottombuttonText;
  final bottombtnonTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: bottombtnonTap,
      child: Container(
        child: Center(child: Text(bottombuttonText,style: kbottombuttonText,)),
        width: double.infinity,
        height: 80.0,
        padding: EdgeInsets.only(bottom: 10.0 ),
        color: kbottomContainerColor,
      ),
    );
  }
}


