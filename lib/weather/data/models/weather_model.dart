import 'package:clean_architecture_weather/weather/domain/entities/weather_entity.dart';

class WeatherModel extends WeatherEntity{

  // put Model with factory

  WeatherModel(
  {
  required super.id,
  required super.description,
  required super.cityName,
  required super.main,
  required super.pressure
  });

  factory WeatherModel.fromJson ( {required Map<String , dynamic>  json}  )  {
    return WeatherModel
    (
    id: json["id"],
    description: json["weather"][0]["description"],
cityName: json["name"],
main: json["weather"][0]["main"],
pressure: json["main"][0]["pressure"]
) ; 
}



}