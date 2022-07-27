  

import 'package:flutter/material.dart';
import 'screens/loadingScreen.dart';

void main() {
  runApp( ClimaApp());
}

// ignore: use_key_in_widget_constructors
class ClimaApp extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
 
    );  
  }
  }