import 'package:flutter/material.dart';
import 'package:untitled1/pages/espresso_screen.dart'; // Импортируйте новый экран
import 'package:untitled1/pages/season_screen.dart'; // Импортируйте новый экран
import 'package:untitled1/pages/special_screen.dart';
import 'package:untitled1/pages/aboutus_screen.dart'
    '';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'COFFEIN',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        '/': (context) => const HomeScreen(), //дом
        '/espresso': (context) => EspressoScreen(), //эспрессо
        '/season': (context) => SeasonScreen(), //сезонные
        '/special': (context) => SpecialScreen(),//особые
        '/aboutus': (context) => const AboutUs()//о нас
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('О нас'),
              onTap: () {
                Navigator.pushNamed(context, '/aboutus');

              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: const Center(
              child: FlutterLogo(size: 100),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Оберните каждую кнопку в InkWell для обработки нажатия
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/espresso');

                  },
                  child: const CustomButtonWithImage(
                    image: 'https://aajj.sdf.kim/action3.jpeg',
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/season');

                  },
                  child: const CustomButtonWithImage(
                    image: 'https://aajj.sdf.kim/action3.jpeg',
                  ),
                ),

                // Для еще кнопки с картинкой
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/special');
                  },
                  child: const CustomButtonWithImage(
                    image: 'https://aajj.sdf.kim/action3.jpeg',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Оставьте CustomButtonWithImage без изменений
class CustomButtonWithImage extends StatelessWidget {
  final String image;

  const CustomButtonWithImage({super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(image, fit: BoxFit.cover),
      ),
    );
  }
}
