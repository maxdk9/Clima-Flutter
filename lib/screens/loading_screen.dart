import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/utilities/Location.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:clima/services/networking.dart';



class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Location location;


  void getLocationData() async{

    WeatherModel weatherModel=WeatherModel();
    var weatherData=await weatherModel.getLocationWeather();

    Navigator.push(context,MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: weatherData,);
    }));

    //
    // print(temp);
    // print(weatherId);
    // print(cityName);

  }

   @override
    initState()  {
     super.initState();
     print("init state");
     getLocationData();

   }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 100,
          ),
        ),
      );
  }



}
