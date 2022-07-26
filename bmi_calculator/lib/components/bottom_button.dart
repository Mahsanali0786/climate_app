import 'package:flutter/material.dart';
import 'consatnts.dart';

class BottomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BottomButton({required this.bottombuttonText,required this.bottombtnonTap});
  final String bottombuttonText;
  // ignore: prefer_typing_uninitialized_variables
  final bottombtnonTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: bottombtnonTap,
      child: Container(
        child: Center(child: Text(bottombuttonText,style: kbottombuttonText,)),
        width: double.infinity,
        height: 80.0,
        padding: const EdgeInsets.only(bottom: 10.0 ),
        color: kbottomContainerColor,
      ),
    );
  }
}


