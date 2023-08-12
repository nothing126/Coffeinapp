import 'package:flutter/material.dart';

class EspressoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Espresso Drinks'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 2, // Количество столбцов
          children: [
            CustomSquare(
              image: 'https://aajj.sdf.kim/action3.jpeg',
            ),
            CustomSquare(
              image: 'https://aajj.sdf.kim/action3.jpeg',
            ),
            CustomSquare(
              image: 'https://example.com/image4.jpg',
            ),
            CustomSquare(
              image: 'https://example.com/image4.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSquare extends StatelessWidget {
  final String image;

  const CustomSquare({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(image, fit: BoxFit.cover),
      ),
    );
  }
}
