import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('О нас'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://example.com/about_us_image.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20), // Расстояние между прямоугольником и кнопками
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(Icons.map),
                onPressed: () async {
                  const String url = 'https://www.google.com/maps/place/COFFEIN/@46.3000328,28.654619,191m/data=!3m2!1e3!4b1!4m6!3m5!1s0x40b627b325bd90c3:0x2386245de843354a!8m2!3d46.3000319!4d28.6552627!16s%2Fg%2F11svmsv9l6!5m1!1e4?entry=ttu';

                  if (await canLaunch(url)) {
                  await launch(url);
                  } else {
                  throw 'Could not launch $url';
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.telegram),
                onPressed: ()  async {
                  const String url = 'https://t.me/Coffein_Comrat';

                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.add_a_photo_outlined ),
                onPressed: ()async {
                  {
                    const String url = 'https://instagram.com/coffein_comrat?igshid=MzNlNGNkZWQ4Mg==';

                    if (await canLaunch(url)) {
                  await launch(url);
                  } else {
                  throw 'Could not launch $url';
                  }
                  }
                }

    ),
            ],
          ),
        ],
      ),
    );
  }
}