import 'package:flutter/material.dart';
import 'styles/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kiyomi/components/header.dart';


class DownloadScreen extends StatelessWidget {
  final String gameUrl = 'https://kiyomibykiyoufu.netlify.app/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Imagen de portada o logo
              Image.asset(
                'images/announcement.png',
                width: 370,
              ),
              const SizedBox(height: 24),

              // Texto descriptivo
              const Text(
                'Kiyomi is a horror game for PC.\nDownload it and experience the thrill!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 24),

              // Botón para redirigir a la web
              ElevatedButton(
                onPressed: () async {
                  final Uri url = Uri.parse('https://kiyomibykiyoufu.netlify.app');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not open the link $url';
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary, // Color del botón
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Go to Download Page',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
