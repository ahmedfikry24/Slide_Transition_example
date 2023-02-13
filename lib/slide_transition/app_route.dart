import 'package:flutter/material.dart';

class AppRoute {
  static Route slideTansition(Widget page2) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page2,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // offset is x , y dimentions
        const begin = Offset(1, 0);
        const end = Offset.zero;
        const curve = Curves.ease;

        // animation<Offset>
        var animationRoute = animation.drive(
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve)));

        return SlideTransition(
          position: animationRoute,
          child: child,
        );
      },
    );
  }
}
