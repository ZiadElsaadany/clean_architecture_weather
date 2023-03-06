import 'package:clean_architecture_weather/weather/domain/entities/weather_entity.dart';

abstract class BaseWeatherRepository  {

  Future<WeatherEntity> getWeatherByCityName( { required String cityName})  ;

}