import 'package:clean_architecture_weather/weather/data/data_source/remote_data_source.dart';
import 'package:clean_architecture_weather/weather/domain/entities/weather_entity.dart';
import 'package:clean_architecture_weather/weather/domain/repositry/base_weather_repositry.dart';

class WeatherRepository implements BaseWeatherRepository  {

// concrete implementation for repository on domain layer
  final RemoteDataSource remoteDataSource ;
  WeatherRepository({required this.remoteDataSource});

  @override
  Future<WeatherEntity> getWeatherByCityName({required String cityName}) async {

    return await remoteDataSource.getWeatherByCityName(cityName: cityName) ;

  }

}