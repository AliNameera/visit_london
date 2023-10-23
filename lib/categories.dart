import 'package:flutter/material.dart';


class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: [
          // First row with one card
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                imagePath: 'assets/1.webp',
                height: 200.0,
                width: 360.0,
              ),
            ],
          ),
          const SizedBox(height: 3.0),
          // Second row with two cards
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                imagePath: 'assets/2.jpg',
                height: 220.0,
                width: 200.0,
              ),
              CategoryCard(
                imagePath: 'assets/3.jpg',
                height: 240.0,
                width: 150.0,
              ),
            ],
          ),
          const SizedBox(height: 3.0),
          // Third row with two cards
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryCard(
                imagePath: 'assets/4.webp',
                height: 260.0,
                width: 200.0,
              ),
              CategoryCard(
                imagePath: 'assets/5.jpg',
                height: 250.0,
                width: 150.0,
              ),
            ],
          ),
          const SizedBox(height: 12.0),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;

  CategoryCard({
    required this.imagePath,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
