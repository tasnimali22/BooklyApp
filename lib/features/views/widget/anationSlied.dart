import 'package:flutter/material.dart';

class Anmationslied extends StatelessWidget {
  const Anmationslied({super.key, required this.animation});

  final Animation<Offset> animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return SlideTransition(
          position: animation,
          child: Text(
            "Read face Books",
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.normal,
            ),
          ),
        );
      },
    );
  }
}
