import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 16, 0, 0),
        child: Image.asset(
          'assets/images/app_icon_text_white.png',
          height: 60,
        ),
      ),
    );
  }
}
