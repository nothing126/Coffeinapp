import 'package:flutter/material.dart';
import 'espresso_screen.dart';

class SpecialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Special_drinks'),
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
              image: 'https://aajj.sdf.kim/action3.jpeg',
            ),
            CustomSquare(
              image: 'https://aajj.sdf.kim/action3.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}
