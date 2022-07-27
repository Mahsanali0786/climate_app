
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/utilities/constants.dart';

class WeatherModel {

 Future<dynamic> weathercityName(String cityName) async{
    NetwrokHelper netwrokHelper = NetwrokHelper(Url: 'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$kapiKey&units=metric' );
  var weatherdata= await netwrokHelper.getweatherdata();
  return weatherdata;
  }
  

 Future<dynamic> getweatherlocatiodata() async{
   Location getgrolocation =Location();
   await getgrolocation.getcurrentlocation();
  NetwrokHelper netwrokHelper = NetwrokHelper(Url: 'https://api.openweathermap.org/data/2.5/weather?lat=${getgrolocation.latitude}&lon=${getgrolocation.longitude}&appid=$kapiKey&units=metric' );
  var weatherdata= await netwrokHelper.getweatherdata();
  return weatherdata;
}

  String getWeatherIcon(var condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(var temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}