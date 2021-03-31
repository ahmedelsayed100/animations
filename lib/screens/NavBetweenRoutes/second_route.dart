import 'package:animations/screens/NavBetweenRoutes/third_route.dart';
import 'package:flutter/material.dart';
import 'nav_routes.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Container(
        child: Center(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.indigo,
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                NavRoutes(
                  page: ThirdRoute(),
                ),
              );
            },
            child: Text("Go To Page 1"),
          ),
        ),
      ),
    );
  }
}
