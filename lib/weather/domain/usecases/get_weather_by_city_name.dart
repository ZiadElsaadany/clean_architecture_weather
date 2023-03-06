import 'package:clean_architecture_weather/weather/domain/entities/weather_entity.dart';
import 'package:clean_architecture_weather/weather/domain/repositry/base_weather_repositry.dart';

class GetWeatherByCity {
  // what is usecase i have?


  final BaseWeatherRepository repositoy  ;
  GetWeatherByCity({required this.repositoy});

  Future<WeatherEntity> execute( {required String cityName}) async {

   return  await  repositoy.getWeatherByCityName(cityName: cityName);


  }


}