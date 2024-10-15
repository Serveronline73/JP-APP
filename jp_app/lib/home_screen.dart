import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  String selectedCategory = "";

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
            // ---------------Text Überschrift----------------------
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
            // ---------------SingeleChildScrollView zum Swipen der Buttons------------
            Positioned(
              top: 165,
              left: 15,
              right: 30,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // ----------------Button Nebeneinander----------------
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
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Text(
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
