


import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/screens/locationScreen.dart';

 
class LoadingScreen extends StatefulWidget {


  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  
  @override
  void initState() {
    super.initState();
    getlocationdata();

  }

  
  void getlocationdata() async{
 
  var weatherdata =await WeatherModel().getweatherlocatiodata();
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return LocationScreen(allweatherdata: weatherdata);

  }));
  
  
  }

  @override
  Widget build(BuildContext context) {
    
    
    return const Scaffold(
      body: Center(child: SpinKitWanderingCubes(
        color: Colors.white,
        size: 100.0,
        duration: Duration(milliseconds: 1500),

        ),
        ),
    
    );
  }
}



