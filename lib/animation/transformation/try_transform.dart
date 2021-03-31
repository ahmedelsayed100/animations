import 'package:flutter/material.dart';

class TryTransform extends StatefulWidget {
  @override
  _TryTransformState createState() => _TryTransformState();
}

class _TryTransformState extends State<TryTransform> {
  double contHeight = 200, contWidth = 200.0, myradius = 0;
  Color myColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("transform"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: contWidth,
                height: contHeight,
                curve: Curves.easeOutCirc,
                decoration: BoxDecoration(
                  color: myColor,
                  borderRadius: BorderRadius.circular(myradius),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.resolveWith(
                  (states) => EdgeInsets.all(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  contHeight = 300;
                  contWidth = 300;
                  myColor = Colors.white;
                  myradius = 150;
                });
              },
              child: Text("Applay Animation"),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.resolveWith(
                  (states) => EdgeInsets.all(20),
                ),
              ),
              onPressed: () {
                setState(() {
                  contHeight = 200;
                  contWidth = 200;
                  myColor = Colors.green;
                  myradius = 0;
                });
              },
              child: Text("Back Normal"),
            ),
          ],
        ),
      ),
    );
  }
}

// transform with scale
/* child: Transform.scale(
                transformHitTests: true,
                origin: Offset(0, 0),
                scale: rotatValue,
                // angle: rotatValue,
                child: Container(
                  color: Colors.indigo[800],
                  width: 150,
                  height: 100,
                ),
              ),
            ),
            */

//tranfor with matrix 4
/*
Transform(
                transform: Matrix4.rotationZ(3.14 / 4)
                  ..translate(80.0)
                  ..scale(1.4),
                child: Container(
                  color: Colors.indigo[800],
                  width: 150,
                  height: 100,
                ),
              ),*/
