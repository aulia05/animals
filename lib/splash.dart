import 'dart:async';

import 'package:animals/home.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }

}

class SplashState extends State{


  @override
  void initState() {

    Timer(
      Duration(
        milliseconds: 2500,
      ), () async {
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage(),));
      }
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Dezoo',
                    style: TextStyle(
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal.shade800,
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.teal.shade700)
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Center(
                child: Text(
                  'dezoo-animals ©2021',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Theme.of(context).textTheme.caption.color
                  ),
                ),
              ),
              left: 0.0,
              right: 0.0,
              bottom: 52.0,
            )
          ],
        ),
      ),
    );
  }

}