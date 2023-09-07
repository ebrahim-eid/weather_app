import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_providers.dart';


import 'modules/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ( context) {
        return WeatherProvider();
      },
      child: MaterialApp(
       debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );
  }
}


