import 'package:animations/screens/NavBetweenRoutes/nav_routes.dart';
import 'package:animations/screens/NavBetweenRoutes/second_route.dart';
import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        child: Center(
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.of(context).push(
                NavRoutes(
                  page: SecondRoute(),
                ),
              );
            },
            child: Text("Go To Page 2"),
          ),
        ),
      ),
    );
  }
}
