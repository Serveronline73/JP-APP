import 'package:flutter/material.dart';
import 'package:jp_app/features/detail_screen/transparent_container.dart';
import 'package:jp_app/features/mainscreen/my_button.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: 500,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 13, 13, 13),
            Color.fromARGB(218, 81, 76, 87)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Positioned(
            top: -120,
            left: -40,
            child: Transform.scale(
              scale: 1.0,
              child: const Image(
                image: AssetImage("assets/catcupcake.png"),
              ),
            ),
          ),
          Positioned(
              bottom: 64,
              right: 64,
              left: 64,
              child: MyButton(text: "Add to order for ₳ 8,99")),
          const Positioned(
              bottom: 160, left: 30, child: TransparentContainer()),
        ],
      ),
    );
  }
}
