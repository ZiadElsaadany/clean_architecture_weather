class WeatherEntity  {

  final int id ;
  final String cityName ;
  final String main ;
  final String description;
  final int pressure ;
WeatherEntity(
  {
    required this.id,
    required this.description,
    required this.cityName,
    required this.main ,
    required this.pressure
}
    );


}