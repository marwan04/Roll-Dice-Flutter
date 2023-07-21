import 'package:flutter/material.dart';
import 'package:project1/gradient_container.dart';

void main() {

  runApp(
    const MaterialApp(
      home: Scaffold(
        // GradientContainer(colors: [ Color.fromARGB(255, 183, 236, 76) , Color.fromARGB(255, 198, 56, 13)],)
        body: GradientContainer(Color.fromARGB(255, 121, 63, 220),Color.fromARGB(255, 46, 73, 225),),
      ),
    ),
  );
}


