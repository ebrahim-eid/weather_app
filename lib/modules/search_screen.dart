import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/modules/weather_screen.dart';
import 'package:weather_app/providers/weather_providers.dart';

import '../components/components.dart';
import '../http_service/http_service.dart';

class SearchScreen extends StatelessWidget {

  var searchController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: scaffoldBackground,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            bottom: 80,
            right: 20,
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(15),
              ),
              width: double.infinity,
              height: 300,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'WEATHER APP',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  const SizedBox(height: 70),
                  Form(
                    key: formKey,
                    child: TextFormField(
                      onFieldSubmitted: (value) async {
                        if (formKey.currentState!.validate()) {
                          cityName = value;
                          WeatherService service = WeatherService();
                          WeatherModel weather =
                              await service.getWeather(cityName: cityName!);
                          Provider.of<WeatherProvider>(context, listen: false)
                              .weatherData = weather;
                        }
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'ENTER CITY NAME ';
                        }
                        return null;
                      },
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'ENTER CITY',
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                    child: MaterialButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          cityName = searchController.text;
                          WeatherService service = WeatherService();
                          WeatherModel weather =
                              await service.getWeather(cityName: cityName!);
                          Provider.of<WeatherProvider>(context, listen: false)
                              .weatherData = weather;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (
                                context,
                              ) =>
                                      WeatherScreen()));
                        }
                      },
                      child: const Text(
                        'Search',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}
