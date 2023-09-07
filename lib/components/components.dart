import 'package:flutter/material.dart';

var scaffoldBackground = const BoxDecoration(
    image: DecorationImage(
        image: AssetImage('assets/images/cloudy.jpg'),
        fit: BoxFit.cover
    )
);

// Widget pageView (WeatherModel weatherData) => Padding(
//     padding: const EdgeInsets.only(
//         top: 90,
//         bottom: 20,
//         left: 20,
//         right: 20
//     ),
//     child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Text(
//                 weatherData.cityName,
//                 style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white),
//             ),
//             const SizedBox(
//                 height: 5,
//             ),
//             Text(
//                 weatherData.date,
//                 style: TextStyle(color: Colors.white),
//             ),
//             Spacer(),
//             Text(
//                 weatherData.temp,
//                 style: TextStyle(fontSize: 40, color: Colors.white),
//             ),
//             Row(
//                 children: [
//                     Image(
//                         image: NetworkImage(
//                             '${weatherData.icon}')),
//                     Text(
//                         weatherData.status,
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 25,
//                         ),
//                     ),
//                 ],
//             ),
//             SizedBox(
//                 height: 15,
//             ),
//             Container(
//                 width: double.infinity,
//                 height: 1,
//                 color: Colors.grey,
//             ),
//             SizedBox(
//                 height: 15,
//             ),
//             Row(
//                 children: [
//                     Column(
//                         children: [
//                             Text(
//                                 'MAX',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                 ),
//                             ),
//                             SizedBox(
//                                 height: 5,
//                             ),
//                             Text(
//                                 weatherData.maxTemp,
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                 ),
//                             ),
//                         ],
//                     ),
//                     Spacer(),
//                     Column(
//                         children: [
//                             Text(
//                                 'MIN',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                 ),
//                             ),
//                             SizedBox(
//                                 height: 5,
//                             ),
//                             Text(
//                                 weatherData.minTemp,
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                 ),
//                             ),
//                         ],
//                     ),
//                     Spacer(),
//                     Column(
//                         children: [
//                             Text(
//                                 'WIND',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                 ),
//                             ),
//                             SizedBox(
//                                 height: 5,
//                             ),
//                             Text(
//                                 weatherData.windDegree,
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                 ),
//                             ),
//                         ],
//                     ),
//                 ],
//             ),
//         ],
//     ),
// );

String ? cityName;