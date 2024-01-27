import 'package:flutter/material.dart';

class SmallRedEclipse extends StatelessWidget {
  const SmallRedEclipse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 4,
      decoration:
          const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
    );
  }
}
