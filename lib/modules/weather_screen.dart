import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';

import '../components/components.dart';
import '../providers/weather_providers.dart';
class WeatherScreen extends StatelessWidget {
  WeatherModel ? weatherData;
  @override
  Widget build(BuildContext context) {
    weatherData =Provider.of<WeatherProvider>(context).weatherData;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.search,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/cloudy.jpg'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 90,
                bottom: 20,
                left: 20,
                right: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 ' ${cityName}',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '${weatherData!.date}',
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  '${weatherData!.temp} C',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Row(
                  children: [
                    Image(
                        image: NetworkImage(
                            'https:${weatherData!.icon}'),
                    fit: BoxFit.cover,
                    ),
                    Text(
                      '${weatherData!.condition}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'MAX',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${weatherData!.maxTemp} C',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'MIN',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                         '${weatherData!.minTemp} C',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Text(
                          'WIND',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${weatherData!.windDegree}',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
