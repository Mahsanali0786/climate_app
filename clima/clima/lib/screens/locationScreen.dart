// ignore_for_file: use_key_in_widget_constructors

import 'package:clima/screens/cityScreen.dart';
import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/services/weather.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({required this.allweatherdata});
  // ignore: prefer_typing_uninitialized_variables
  final allweatherdata;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
 
  WeatherModel weatherModel = WeatherModel();
  String? temperaturemessage;
  String? weathericon;
  int? idofweather;
  int? temperature;
  String? cityname;

  @override
  void initState() {
    super.initState();
    updatUI(widget.allweatherdata);
  }

  void updatUI(dynamic weatherdata) {
     if( weatherdata == null){
     cityname = '';
    temperaturemessage = 'location erro';
    weathericon = 'error';
    return;
  }
    setState(() {
      idofweather = weatherdata['weather'][0]['id'];
    double temp = weatherdata['main']['temp'];
    temperature = temp.toInt();
    cityname = weatherdata['name'];
    temperaturemessage = weatherModel.getMessage(temperature);
    weathericon = weatherModel.getWeatherIcon(idofweather);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () async{
                      var weatherData =await weatherModel.getweatherlocatiodata();
                      updatUI(weatherData);

                    },
                    child: const Icon(
                      Icons.near_me,
                      size: 50.0,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent)),
                    onPressed: () async{
                     var cityName=await Navigator.push(context,MaterialPageRoute(builder: ((context) {
                        return CityScreen();
                      })));
                    if(cityName!=null){
                     var weatherdata =await weatherModel.weathercityName(cityName);
                      updatUI(weatherdata);
                    }
                      
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      '$temperature°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      '$weathericon',
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  '$temperaturemessage in $cityname',
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
