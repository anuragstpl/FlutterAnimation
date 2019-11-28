import 'package:animator/animator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AnimatedSkewLogo());
}

class AnimatedLogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Animator(
      repeats: 0,
      cycles: 5,
      duration: Duration(seconds: 10),
      curve: Curves.linearToEaseOut,
      builder: (anim) => Opacity(
        opacity: anim.value,
        child: FlutterLogo(
          size: 50,
        ),
      ),
    );
  }
}

class AnimatedSkewLogo extends StatelessWidget {
  Widget build(BuildContext context) {
    return Animator(
      tween: Tween<Offset>(begin: Offset(-1, 1), end: Offset(1, 1)),
      repeats: 0,
      duration: Duration(seconds: 5),
      builder: (anim) => SlideTransition(
        position: anim,
        textDirection: TextDirection.ltr,
        
          child: FlutterLogo(
            size: 20,
          ),
      ),
    );
  }
}
