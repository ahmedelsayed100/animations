import 'package:animations/screens/NavBetweenRoutes/first_route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Animation Mastering",
      home: FirstRoute(),
    );
  }
}
