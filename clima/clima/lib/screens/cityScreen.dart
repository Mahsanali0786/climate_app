// ignore: file_names
import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';


// ignore: use_key_in_widget_constructors
class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {

String? cityName;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style: const TextStyle(color: Colors.black,),
                  decoration: InputDecoration(
                    label: const Text('City',style: TextStyle(color: Color.fromARGB(143, 0, 0, 0),fontSize: 20),),
                    labelStyle: const TextStyle(color: Colors.white),
                    hintText: 'Search by City Name',
                    icon: const Icon(Icons.location_city,color: Colors.white,),
                    filled: true,fillColor:Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
                   ),
                   onChanged: (ValueKey){
                    cityName=ValueKey;
                   },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,cityName);
                },
                child: const Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


