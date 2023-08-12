import 'package:flutter/material.dart';

import 'espresso_screen.dart';

class SeasonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Season_drinks'),
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
