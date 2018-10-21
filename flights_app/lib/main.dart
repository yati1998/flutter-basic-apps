import 'package:flutter/material.dart';
import 'package:flights_app/home_screen.dart';
import 'package:flights_app/flight_list.dart';
import 'package:flights_app/flight_details.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MakeMyFlight",
      theme: new ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: HomeBody(),
      routes: <String, WidgetBuilder>{
        'list':(context) => FlightListScreen(),
        'details': (context) => FlightDetailScreen()
      },
    );

  }
}


