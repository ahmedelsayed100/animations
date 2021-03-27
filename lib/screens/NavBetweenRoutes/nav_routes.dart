import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavRoutes extends PageRouteBuilder {
  final page;
  NavRoutes({this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = 0.0;
            var end = 1.0;
            var tween = Tween(begin: begin, end: end);
            var curvedAnimation =
                CurvedAnimation(parent: animation, curve: Curves.easeInOut);
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: tween.animate(curvedAnimation),
                child: child,
              ),
            );
          },
          // transitionDuration: Duration(milliseconds: 300),
        );
}

//this is for slidetransiation
//   NavRoutes({this.page})
// : super(
//     pageBuilder: (context, animation, secondaryAnimation) => page,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       final begin = Offset(0, 1);
//       final end = Offset.zero;
//       var tween = Tween(begin: begin, end: end);
//       final curvedAnimation =
//           CurvedAnimation(parent: animation, curve: Curves.easeInOut);
//       return SlideTransition(
//         position: tween.animate(curvedAnimation),
//         child: child,
//       );
//     },
//     transitionDuration: Duration(milliseconds: 300),
//   );
///============================================================================
//this is for scale
//  NavRoutes({this.page})
//       : super(
//           pageBuilder: (context, animation, secondaryAnimation) => page,
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             var begin = 0.5;
//             var end = 1.0;
//             var tween = Tween(begin: begin, end: end);
//             var curvedAnimation =
//                 CurvedAnimation(parent: animation, curve: Curves.easeInOut);
//             return ScaleTransition(
//               scale: tween.animate(curvedAnimation),
//               child: child,
//             );
//           },
//         );

///==========================this is for rotate==================================================

//  NavRoutes({this.page})
//       : super(
//           pageBuilder: (context, animation, secondaryAnimation) => page,
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             // final begin = Offset(0, 1);
//             var begin = 0.0;
//             var end = -1.0;
//             var tween = Tween(begin: begin, end: end);
//             var curvedAnimation =
//                 CurvedAnimation(parent: animation, curve: Curves.easeInOut);
//             return RotationTransition(
//               turns: tween.animate(curvedAnimation),
//               child: child,
//             );
//           },
//         );

///==========================this is for size transation==================================================

//  NavRoutes({this.page})
//       : super(
//           pageBuilder: (context, animation, secondaryAnimation) => page,
//           transitionsBuilder: (context, animation, secondaryAnimation, child) {
//             return Align(
//               child: SizeTransition(
//                 sizeFactor: animation,
//                 child: child,
//                 axis: Axis.horizontal,
//                 axisAlignment: 0,
//               ),
//             );
//           },
//           // transitionDuration: Duration(milliseconds: 300),
//         );
///==========================this is for fade transation==================================================

// NavRoutes({this.page})
//     : super(
//         pageBuilder: (context, animation, secondaryAnimation) => page,
//         transitionsBuilder: (context, animation, secondaryAnimation, child) {
//           return FadeTransition(
//             opacity: animation,
//             child: child,
//           );
//         },
//         // transitionDuration: Duration(milliseconds: 300),
//       );
