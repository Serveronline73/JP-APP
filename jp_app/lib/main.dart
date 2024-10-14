import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Erstes Bild mit Transparenz
            Positioned.fill(
              child: Opacity(
                opacity: 0.8, // Transparenzwert für das erste Bild
                child: Image.asset(
                  "assets/startscreen.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Zweites Bild direkt darüber ohne Transparenz
            Positioned.fill(
              child: Image.asset(
                "assets/mainscreen.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
