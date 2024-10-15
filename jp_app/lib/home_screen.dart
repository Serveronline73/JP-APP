import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:jp_app/features/widget/sale_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  String selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset("assets/bg_mainscreen.png", fit: BoxFit.cover),
            ),
            const Positioned(
              top: 70,
              right: 95,
              child: Text(
                "Choose your Favorite\nSnack",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: 165,
              left: 15,
              right: 30,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildCategoryButton("All Categories"),
                    const SizedBox(width: 5),
                    _buildCategoryButton("Salty"),
                    const SizedBox(width: 5),
                    _buildCategoryButton("Sweet"),
                    const SizedBox(width: 5),
                    _buildCategoryButton("Drinks"),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 0,
              right: 0,
              child: Center(
                child: Container(
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
                            color: const Color.fromARGB(
                                255, 175, 107, 231), // Buttonfarbe
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
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 20),
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
                ),
              ),
            ),
            const Positioned(
              top: 600,
              left: 20,
              child: Row(
                children: [
                  SaleList(
                      title: "Mogli's Cup",
                      description: "Strawberry ice cream",
                      price: "₳ 8,99",
                      likes: 200,
                      imagePath: "assets/catcupcake.png"),
                  SizedBox(width: 32),
                  SaleList(
                      title: "Balu's Cup",
                      description: "Pistachio ice cream",
                      price: "  ₳ 8,99",
                      likes: 150,
                      imagePath: "assets/icecream.png")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryButton(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategory = text;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: selectedCategory == text
              ? Colors.pink.withOpacity(0.4)
              : Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.white, width: 0.03),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        child: text == "All Categories"
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.fastfood_outlined,
                          color: Colors.white), // Icon vor dem Text
                      const SizedBox(
                          width: 15), // Abstand zwischen Icon und Text
                      Text(
                        text,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.expand_more,
                      color: Colors.white), // Icon rechts vom Text
                ],
              )
            : Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
