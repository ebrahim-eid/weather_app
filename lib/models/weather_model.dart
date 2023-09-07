
class WeatherModel {
   String ? date;
   String ? icon;
   double ? temp;
   double ? maxTemp;
   double ? minTemp;
   String ? condition;
   int ? windDegree;

  WeatherModel(
      {
      required this.date,
      required this.temp,
      required this.icon,
      required this.condition,
      required this.maxTemp,
      required this.minTemp,
      required this.windDegree
      });

   factory WeatherModel.fromJson (dynamic data){
     var jsonData = data['forecast']['forecastday'][0]['day'];
     return WeatherModel(
         date: data['forecast']['forecastday'][0]['date'],
         temp: jsonData['avgtemp_c'],
         icon: data['current']['condition']['icon'],
         condition: jsonData['condition']['text'],
         maxTemp: jsonData['maxtemp_c'],
         minTemp: jsonData['mintemp_c'],
         windDegree: data['forecast']['forecastday'][0]['hour'][0]['wind_degree']
     );
   }
}

