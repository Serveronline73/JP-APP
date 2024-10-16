import 'package:flutter/material.dart';
import 'package:jp_app/features/home_screen/sale_list.dart';
import 'package:jp_app/features/home_screen/top_card.dart';

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
            const Positioned(
              top: 250,
              left: 0,
              right: 0,
              child: Center(
                child: TopCard(
                  title: 'Angis Burger',
                  price: '8.99',
                  image: 'assets/catcupcake.png',
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
