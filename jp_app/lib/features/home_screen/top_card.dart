import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/features/detail_screen/detail_screen.dart';

class TopCard extends StatelessWidget {
  const TopCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 280,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  opacity: 0.6,
                  image: AssetImage("assets/topcard.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 120,
            child: Container(
              width: 300,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Burger_3D.png"),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          const Positioned(
            top: 30,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Angi's Yummy Burger",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 90),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 233, 30, 169),
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "4.8",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  "Delish vegan Burger\nthat tastes like heaven",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "₳ 13.99",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //-------- Button mit abgerundeten Ecken und Glow-Effekt -------
          Positioned(
            bottom: 50,
            left: 15,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 175, 107, 231), // Buttonfarbe
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 212, 103, 201)
                        .withOpacity(0.7),
                    blurRadius: 15,
                    spreadRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailScreen()));
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Add to Order",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
