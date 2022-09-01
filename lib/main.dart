import 'package:flutter/material.dart';

import 'Bottom Screen.dart';
import 'Detail.dart';
import 'Movies & API.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "movie_layout",
      theme: ThemeData.dark(),
      routes: {

        "movie_layout": (context) => MovieLayout(),
        "movie_screen": (context) => MoviesScreen(),
        "movie_details_screen": (context) => MovieDetailsScreen(),
      },
    );
  }
}