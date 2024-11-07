import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'styles/colors.dart';
import 'package:kiyomi/components/header.dart';

class AboutScreen extends StatelessWidget {
  final List<String> imagePaths = [
    'images/adriansito.jpeg',
    'images/cass.jpeg',
    'images/jahir.jpeg',
    'images/zorra.jpeg',
    'images/paul.jpeg',
  ];

  // Usamos el CarouselController del paquete carousel_slider
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: AppColors.primary,
              child: const Text(
                'Who we are...',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Carrusel de imágenes
            CarouselSlider(
              items: imagePaths.map((path) {
                return Builder(
                  builder: (BuildContext context) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.asset(
                        path,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 1,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                viewportFraction: 0.7,
              ),
            ),
            const SizedBox(height: 16),

            // Descripción
            const Text(
              'Velit occaecat sunt duis voluptate nostrud sit ut esse occaecat fugiat qui nisi ullamco. Ex cillum qui eiusmod ipsum reprehenderit in. '
                  'Minim pariatur do elit et occaecat sit duis velit ut ut id sint. Ex in cupidatat aute aliquip aliqua',
              style: TextStyle(
                color: AppColors.text,
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
