import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


void main() => runApp(WeatherApp());

class WeatherApp extends StatefulWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {

  int temperature = 38;
  String location = 'Pilani, Rajasthan';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Assets/ClearSkySun.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  style: TextStyle(color: Colors.black, fontSize: 21.0),
                  decoration: InputDecoration(
                    hintText: 'Enter Location',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 17.0),
                    prefixIcon: Icon(Icons.search, color: Colors.black, size: 22.0)
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 50.0),
                  child: Text(
                    'Bright \nSunny \nDay',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                  alignment: Alignment.topLeft,
                ),
                SizedBox(height: 200.0,),
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 0.0),
                  child: Text(
                    location,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18.0,
                    )
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                      child: Text(
                        temperature.toString() + '°',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 130.0,
                        ),
                      ),
                      alignment: Alignment.topLeft,
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                          child: Text(
                            'High',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20.0,
                            )
                          )
                        ),
                        Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
                          child: Text(
                              '40°',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                             )
                          )
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,10.0),
                            child: Text(
                                'Low',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 20.0,
                                )
                            )
                        ),
                        Container(
                            color: Colors.transparent,
                            padding: EdgeInsets.fromLTRB(10.0,0.0,10.0,0.0),
                            child: Text(
                                '25°',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                )
                            )
                        ),

                      ],
                    ),
                  ],
                ),
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(20.0,0.0,0.0,0.0),
                  child : Text(
                        'Feels like 35°',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                        )
                    ),
                  alignment: Alignment.topLeft,
                ),
              ]
            ),
          )
        ),
      )
    );
  }
}


