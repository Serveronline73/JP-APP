import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/features/mainscreen/my_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            "assets/startscreen.png",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 265,
          left: 140,
          child: Transform.scale(
            scale: 2.2,
            child: Image.asset(
              "assets/chickcupcake.png",
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          left: 0,
          right: 0,
          child: Center(
            child: Image.asset(
              "assets/T2.png",
              width: 800,
              height: 330,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned(
          top: 600,
          left: 20,
          right: 20,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.white, width: 0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Feeling Snackish Today?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Explore Angi's most popular snack selection and get instantly happy.",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 40),
                      MyButton(text: "Order Now"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
