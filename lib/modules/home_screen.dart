import 'package:flutter/material.dart';
import 'package:weather_app/modules/search_screen.dart';

import '../components/components.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: scaffoldBackground,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 100,
            bottom: 80
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'There is no weather 🙃 start',
                  style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
                Text(
                  'searching now',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(height: 40,),
                // Image(image: AssetImage('assets/images/sun.jpg')),
                Text('Breeze',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),),
                SizedBox(height: 5,),
                Text('Weather App',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey[800]
                  ),
                ),
                SizedBox(height: 40,),
                FloatingActionButton(
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context)=> SearchScreen(),
                          ),
                              (Route<dynamic> route ) => false
                      );
                    },
                  child: Icon(Icons.arrow_forward,
                )
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}
