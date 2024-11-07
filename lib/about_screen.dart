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
                'Somos Kyoufu Studios, un equipo de estudiantes de la Universidad Tecnológica de Chihuahua apasionados por crear experiencias de terror inmersivas y profundas. '
                    'Nuestro estudio nació con el deseo de explorar las sombras y las complejidades de la mente humana a través de la narrativa y la atmósfera. '
                    'En Kyoufu Studios, creemos que el terror psicológico tiene un poder único para conectar con las emociones más profundas del jugador.',
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
                'Para nuestro primer proyecto, estamos desarrollando un juego de terror psicológico en Unity que cuenta la historia de dos hermanas y los secretos oscuros de su pasado. '
                    'Cada miembro del equipo aporta habilidades únicas en programación, diseño y narrativa, usando herramientas como Blender para la creación de ambientes inmersivos y detallados. '
                    'Nuestro objetivo es construir un mundo que no solo asuste, sino que también cuente una historia profunda y provocadora, explorando la línea entre el miedo y la realidad.',
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
