import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  NetworkHelper({this.url});

  final String url;

  Future getData() async {
    // Response response = await get(
    //     'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    Response response = await get(
        url);

    if (response.statusCode == 200) {

      return jsonDecode(response.body);
    } else {
      int statusCode=response.statusCode;
      print('Error on getData $statusCode');
      return response.statusCode;
    }
  }
}
