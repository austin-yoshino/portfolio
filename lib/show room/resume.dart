import 'package:flutter/material.dart';
import 'package:pdf_render_scroll/pdf_render_widgets.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
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
      body: SingleChildScrollView(
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Last updated: Feb 13, 2024',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: InkWell(
                onTap: () => _launchURL('https://austinyoshino.com'),
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
            Container(
              height:
                  1000, // Specify a fixed height or use MediaQuery to make it responsive
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: PdfViewer.openAsset(
                'assets/pdfs/austinResume.pdf',
                viewerController: _pdfController,
                params: const PdfViewerParams(
                  padding: 10,
                  minScale: 1.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
