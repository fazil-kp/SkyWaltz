import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:red_weather/provider/weather_provider.dart';

import 'screens/loading_screen.dart';

void main() => runApp(
  ChangeNotifierProvider(
    create: (context) => WeatherProvider(),
    child: MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    ),
  ),
);
