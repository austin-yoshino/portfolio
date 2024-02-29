import 'package:flutter/material.dart';
import 'package:pdf_render_scroll/pdf_render_widgets.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class DecksScreen extends StatefulWidget {
  const DecksScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DecksScreenState createState() => _DecksScreenState();
}

class _DecksScreenState extends State<DecksScreen> {
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
                'Pitch Decks',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
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
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Boogy Sales Pitch:',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: PdfViewer.openAsset(
                'assets/pdfs/boogyCommunities.pdf',
                viewerController: _pdfController,
                params: const PdfViewerParams(
                  padding: 10,
                  // minScale: 1.0,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Joyn Fundraising Pitch:',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: PdfViewer.openAsset(
                'assets/pdfs/joynDeck.pdf',
                viewerController: _pdfController,
                params: const PdfViewerParams(
                  padding: 10,
                  // minScale: 1.0,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Synodic Fundraising Pitch:',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: PdfViewer.openAsset(
                'assets/pdfs/synodicDeck.pdf',
                viewerController: _pdfController,
                params: const PdfViewerParams(
                  padding: 10,
                  // minScale: 1.0,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Phenom Brand Guide:',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: PdfViewer.openAsset(
                'assets/pdfs/phenomBrand.pdf',
                viewerController: _pdfController,
                params: const PdfViewerParams(
                  padding: 10,
                  // minScale: 1.0,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
