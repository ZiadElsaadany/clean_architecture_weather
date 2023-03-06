import 'package:clean_architecture_weather/weather/domain/entities/weather_entity.dart';


// put all methods here without implementation

// contract
abstract class BaseWeatherRepository  {

  Future<WeatherEntity> getWeatherByCityName( { required String cityName}) ;


}