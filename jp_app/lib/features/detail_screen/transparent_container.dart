import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Stack(
                  children: [
                    // Hintergrundbild
                    Container(
                      width: 350,
                      height: double.infinity,
                      child: Image.asset(
                        'assets/startscreen.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Zweites Bild
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 20), // Abstand vom oberen Rand
                          Image.asset(
                            'assets/chickcupcake_3D.png',
                            width: 300,
                            height: 300,
                          ),
                          SizedBox(height: 20),
                          const TransparentContainer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Button unter dem Container
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.pink, Colors.orangeAccent],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    constraints: const BoxConstraints(
                      maxWidth: double.infinity,
                      minHeight: 40,
                    ),
                    child: const Text(
                      "Order Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransparentContainer extends StatelessWidget {
  const TransparentContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: Container(
          width: 370,
          height: 380,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.white, width: 0),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:
                CrossAxisAlignment.start, // Text links ausrichten
            children: [
              SizedBox(height: 25),
              Center(
                child: Text(
                  "Mogli's Cup",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Cat Cupcake Neu im Sortiment\nzergeht auf der Zunge und ist ein echter Leckerbissen",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white70,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "₳ 8,99",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: Colors.white70,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ingredients",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.food_bank_rounded,
                                color: Colors.white, size: 20),
                            SizedBox(width: 5),
                            Icon(Icons.restaurant_menu,
                                color: Colors.white, size: 20),
                            SizedBox(width: 5),
                            Icon(Icons.eco, color: Colors.white, size: 20),
                            SizedBox(width: 5),
                            Icon(Icons.casino, color: Colors.white, size: 20),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 20),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.white, size: 20),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.white, size: 20),
                            SizedBox(width: 5),
                            Icon(Icons.star, color: Colors.grey, size: 20),
                            SizedBox(width: 5),
                            Text(
                              "4.0",
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
