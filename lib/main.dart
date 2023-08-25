import 'package:flutter/material.dart';
import 'package:mynotes/screens/home.dart';

//import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rayen Intec',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        //primaryColor: const Color.fromARGB(255, 84, 126, 159),
        highlightColor: const Color.fromARGB(255, 255, 255, 255),
        //primarySwatch: Color.fromARGB(255, 9, 188, 137),

        //Color: Colors.purple,

        // Define the default font family.
        fontFamily: 'Arial',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 36.0, fontStyle: FontStyle.normal),
          bodyMedium: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: const Home(),
    );
  }
}
