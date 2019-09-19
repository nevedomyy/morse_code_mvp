import 'package:flutter/material.dart';
import 'morse.dart';
import 'dart:ui';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white, fontSize: 40.0, fontFamily: 'TenorSans-Regular'),
          body1: TextStyle(color: Colors.white, fontSize: 25.0, fontFamily: 'SegoeUIBlack'),
        )
      ),
      home: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: Image.asset(
              'assets/bgr.png',
              fit: BoxFit.fitHeight,
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Morse()
        ],
      ),
    );
  }
}