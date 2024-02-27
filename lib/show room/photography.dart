import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import flutter/services.dart
import 'package:pdf_render_scroll/pdf_render_widgets.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class photographyScreen extends StatefulWidget {
  const photographyScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _photographyScreenState createState() => _photographyScreenState();
}

// ignore: camel_case_types
class _photographyScreenState extends State<photographyScreen> {
  final PdfViewerController _pdfController = PdfViewerController();

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
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Wrap your SingleChildScrollView with a Container
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/images/corkBackground.png'), // Specify your image path
            fit: BoxFit.cover, // Cover the entire widget area
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Resume',
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Your other widgets go here
            ],
          ),
        ),
      ),
    );
  }
}
