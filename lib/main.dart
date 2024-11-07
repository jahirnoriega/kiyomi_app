import 'package:flutter/material.dart';
import 'styles/colors.dart';

main() => runApp(Kiyomi());

class Kiyomi extends StatelessWidget {
  const Kiyomi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.background,
          title: const Text('恐怖',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {},
          ),
        ],
        ),
        body: _Index(),
      ),
    );
  }
}

class _Index extends StatefulWidget {
  const _Index({super.key});

  @override
  State<_Index> createState() => _IndexState();
}

class _IndexState extends State<_Index> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: AppColors.secondary, // Color rojo del título
              child: const Text(
                'KIYOMI - 清美',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Imagen
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'images/classroom.jpeg', // Cambia por la ruta de tu imagen
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),

            // Cita
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                '"Kiyomi logra sumergir al jugador en una atmósfera oscura, donde cada rincón de la escuela abandonada revela secretos perturbadores ymisterios sin resolver."',
                style: TextStyle(
                  color: AppColors.text,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),

            // Descripción
            const Text(
              'Kiyomi era conocida por su belleza y carisma, admirada por todos en la escuela. Sin embargo, su hermana menor, Kyuju, siempre vivió a su sombra, cargando con una profunda envidia que lentamente se transformó en resentimiento. Un día, ocurrió un trágico suceso que cambiaría sus vidas para siempre. Kiyomi fue brutalmente atacada, quedando gravemente herida, y murió bajo el árbol que ambas hermanas solían visitar en el patio de la escuela. \n\n'
                  "Años después, la escuela ha quedado en ruinas, envuelta en leyendas oscuras sobre la presencia de Kiyomi, cuyo espíritu atormentado deambula por los pasillos en busca de algo o alguien. Kyuju regresa al lugar donde todo comenzó, cargando con una culpa que no la deja en paz, mientras busca una forma de redimirse o escapar de su inevitable destino.",
              style: TextStyle(
                color: AppColors.text,
                fontSize: 16,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
