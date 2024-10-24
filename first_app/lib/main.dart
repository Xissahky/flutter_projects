import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 36, 9, 83),
          Color.fromARGB(255, 66, 5, 172)
          ),
      ),
    ),
  );
}
