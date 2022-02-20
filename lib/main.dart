import 'package:animals/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          elevation: 5.0,
          shadowColor: Color(0x33757575),
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Color(0xFF1C1E1F),
          ),
          textTheme: TextTheme(
            subtitle1: TextStyle(
              color: Color(0xFF1C1E1F),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            )
          )
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}


