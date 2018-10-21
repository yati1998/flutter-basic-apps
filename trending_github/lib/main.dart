import 'package:flutter/material.dart';
import 'package:trending_github/github_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Github Trending Repos',
      debugShowCheckedModeBanner: false,
      home: new myHomePage(),
    );
  }
}