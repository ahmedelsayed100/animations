import 'package:flutter/material.dart';
import 'first_route.dart';
import 'nav_routes.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: Center(
          child: FlatButton(
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).push(
                NavRoutes(
                  page: FirstRoute(),
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
