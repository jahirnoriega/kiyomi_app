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
      body: SingleChildScrollView(
        child: Padding(
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
                  height: 300,
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
                'We are Kyoufu Studios, a team of students from the Technological University of Chihuahua passionate about creating immersive and deep horror experiences. '
                    'Our studio was born from the desire to explore the shadows and complexities of the human mind through narrative and atmosphere. '
                    'At Kyoufu Studios, we believe that psychological horror has a unique power to connect with the player\'s deepest emotions.',
                style: TextStyle(
                  color: AppColors.text,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 16),

              // Imagen con el logo o diseño gráfico
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'images/kyoufu_studios.png', // Asegúrate de que el archivo esté en `pubspec.yaml`
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 0.8,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Segundo párrafo de texto
              const Text(
                'For our first project, we are developing a psychological horror game in Unity that tells the story of two sisters and the dark secrets of their past. '
                    'Each team member brings unique skills in programming, design, and storytelling, using tools like Blender to create immersive and detailed environments. '
                    'Our goal is to build a world that not only scares but also tells a deep and thought-provoking story, exploring the line between fear and reality.',
                style: TextStyle(
                  color: AppColors.text,
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
