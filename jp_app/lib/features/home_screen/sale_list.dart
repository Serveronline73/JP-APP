// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class SaleList extends StatelessWidget {
  const SaleList({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.likes,
    required this.imagePath,
  }) : super(key: key);

  final String title;
  final String description;
  final String price;
  final int likes;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(255, 155, 170, 236),
            Color.fromARGB(218, 129, 101, 171)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Image.asset(
              imagePath,
              width: 160,
              height: 160,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 16),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 18,
              top: 2,
            ),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white70,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 16, vertical: 8), // Abstand von links und rechts
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Abstand zwischen Preis und Herz-Icon
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 16,
                    ),
                    const SizedBox(
                        width: 4), // Kleiner Abstand zwischen Icon und Text
                    Text(
                      likes.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
