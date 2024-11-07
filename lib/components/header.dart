import 'package:flutter/material.dart';
import '/styles/colors.dart';
import '/download_screen.dart';
import '/gallery_screen.dart';
import '/ranking_screen.dart';
import '/about_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.background,
      title: const Text(
        '恐怖',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      actions: [
        PopupMenuButton<String>(
          color: AppColors.shade, // Color de fondo del menú
          icon: Icon(Icons.menu, color: Colors.white),
          onSelected: (value) {
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
          },
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: 'Download',
                child: Text(
                  'Download',
                  style: TextStyle(color: AppColors.text),
                ),
              ),
              PopupMenuItem(
                value: 'Gallery',
                child: Text(
                  'Gallery',
                  style: TextStyle(color: AppColors.text),
                ),
              ),
              PopupMenuItem(
                value: 'Ranking',
                child: Text(
                  'Ranking',
                  style: TextStyle(color: AppColors.text),
                ),
              ),
              PopupMenuItem(
                value: 'About',
                child: Text(
                  'About',
                  style: TextStyle(color: AppColors.text),
                ),
              ),
            ];
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
