import 'package:flutter/material.dart';
import 'package:project/screens/main_screen.dart';
import 'package:project/screens/modules.dart';
import 'package:project/screens/planets.dart';
import 'package:project/screens/resources.dart';
import 'package:project/widgets/models.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Астропедия',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/planets': (context) => LocationsScreen(planets: planets, specialLocations: specialLocations),
        '/resources': (context) => ResourcesScreen(resources: exampleResources),
        '/items': (context) => GameItemsScreen(items: modules),
      },
      theme: ThemeData(
        fontFamily: 'NDastroneer',
        scaffoldBackgroundColor: Color(0xff0050e7),
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
          displayLarge: TextStyle(color: Colors.white),
          displayMedium: TextStyle(color: Colors.white),
          displaySmall: TextStyle(color: Colors.white),
          headlineLarge: TextStyle(color: Colors.white),
          headlineMedium: TextStyle(color: Colors.white),
          headlineSmall: TextStyle(color: Colors.white),
          titleLarge: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
          titleSmall: TextStyle(color: Colors.white),
          labelLarge: TextStyle(color: Colors.white),
          labelMedium: TextStyle(color: Colors.white),
          labelSmall: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
