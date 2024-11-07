import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; 
import 'download_screen.dart';
import 'package:kiyomi/components/header.dart';
import 'gallery_screen.dart';
import 'ranking_screen.dart';
import 'about_screen.dart';
import 'styles/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const Kiyomi());
  });
}

class Kiyomi extends StatelessWidget {
  const Kiyomi({super.key});

  void _navigateTo(BuildContext context, String value) {
    // Función para manejar la navegación
    switch (value) {
      case 'Download':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DownloadScreen()),
        );
        break;
      case 'Gallery':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GalleryScreen()),
        );
        break;
      case 'Ranking':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RankingScreen()),
        );
        break;
      case 'About':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AboutScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: CustomAppBar(),
      body: const _Index(),
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
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              color: AppColors.secondary,
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
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'images/classroom.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.accent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const Text(
                '"Kiyomi manages to immerse the player in a dark atmosphere, where every corner of the abandoned school reveals disturbing secrets and unresolved mysteries."',
                style: TextStyle(
                  color: AppColors.text,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Kiyomi was known for her beauty and charisma, admired by everyone at school. However, her younger sister, Kyuju, always lived in her shadow, harboring a deep envy that slowly transformed into resentment. One day, a tragic event occurred that would change their lives forever. Kiyomi was brutally attacked, left gravely injured, and died beneath the tree the two sisters used to visit in the schoolyard. \n\n'
                  "Years later, the school remains in ruins, shrouded in dark legends about Kiyomi's presence, whose tormented spirit roams the hallways in search of something or someone. Kyuju returns to the place where it all began, burdened with a guilt that gives her no peace, as she searches for a way to find redemption or escape her inevitable fate.",
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
    );
  }
}
