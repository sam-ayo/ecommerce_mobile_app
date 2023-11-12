import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Image.asset(
        'lib/assets/images/mainlogo.png',
        height: 240,
        width: 300,
      ),
    );
  }
}
