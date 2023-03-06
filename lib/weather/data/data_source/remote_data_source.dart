import 'dart:convert';

import 'package:clean_architecture_weather/core/utils/constants.dart';

import '../models/weather_model.dart';
import 'package:http/http.dart'as http;
abstract class BaseRemoteDataSource {

  // put all methods from data --> remote or local

  Future<WeatherModel> getWeatherByCityName  ( { required String cityName } ) ;
}


class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel> getWeatherByCityName({required String cityName}) async {
   try {
http.Response response  =   await http.get(Uri.parse(
  "${AppConstants.baseUrl}weather?q=$cityName&APPID=${AppConstants.apiKey}"
));
return WeatherModel.fromJson(json: jsonDecode(response.body));
   } catch(E)  {

     
     return WeatherModel(id: 1
         , description: "description", cityName: cityName, main: "main", pressure: 2);

   }
  }






}