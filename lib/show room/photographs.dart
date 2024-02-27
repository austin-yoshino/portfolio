import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class photographsScreen extends StatefulWidget {
  const photographsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _photographsScreenState createState() => _photographsScreenState();
}

// ignore: camel_case_types
class _photographsScreenState extends State<photographsScreen> {
  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      'assets/photography/bigWave.png',
      'assets/photography/deer.png',
      'assets/photography/dolphins.png',
      'assets/photography/everett.png',
      'assets/photography/forest.png',
      'assets/photography/fro.png',
      'assets/photography/galaxy.png',
      'assets/photography/glassWave.png',
      'assets/photography/kayla.png',
      'assets/photography/keani.png',
      'assets/photography/pineapple.png',
      'assets/photography/sedona.png',
      'assets/photography/stacia.png',
      'assets/photography/staciaSunset.png',
      'assets/photography/stars.png',
      'assets/photography/sunset.png',
      'assets/photography/tjay.png',
      'assets/photography/wave.png',
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/corkBackground.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Photographs',
                          style: TextStyle(
                            color: AppColors.darkGrey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: InkWell(
                            onTap: () =>
                                _launchURL('https://austinyoshino.com'),
                            child: const Text(
                              'Back to Portfolio',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: AppColors.darkGrey,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: imageList.length, // Use the length of the image list
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(imageList[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
