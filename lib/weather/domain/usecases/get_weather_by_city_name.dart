import 'package:clean_architecture_weather/weather/domain/entities/weather_entity.dart';
import 'package:clean_architecture_weather/weather/domain/repositry/base_weather_repositry.dart';

class GetWeatherByCity {
  // what is usecase i have?

 // execute method-- >return method on BaseReposytory

  final BaseWeatherRepository repository  ;
  GetWeatherByCity({required this.repository});

  Future<WeatherEntity> execute( {required String cityName}) async {

   return  await  repository.getWeatherByCityName(cityName: cityName);


  }


}