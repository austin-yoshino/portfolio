import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:picklerick/colors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class PostItNote extends StatelessWidget {
  final String text;
  const PostItNote({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // The top padding should be enough to accommodate the negative top offset of the tape image
    return Container(
      padding: const EdgeInsets.only(
          top: 30), // Adjust this value to fit the tape image
      decoration: const BoxDecoration(
        color: AppColors.yellow,
      ),
      child: Stack(
        clipBehavior: Clip.none, // Allow overflow
        children: [
          Positioned(
            top:
                -50, // This means the tape image starts 20 logical pixels above the top edge of the stack
            left: 80,
            right: 80,
            child: Image.asset('assets/images/masking_tape.png',
                fit: BoxFit.fitWidth),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top:
                  0.0, // Adjust this value as needed for the text to start below the tape
              left: 8.0,
              right: 8.0,
              bottom: 8.0,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 10,
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WallOfFame extends StatelessWidget {
  final List<String> notes;
  const WallOfFame({
    super.key,
    required this.notes,
  });

  @override
  Widget build(BuildContext context) {
    // Example height of one PostItNote - adjust based on your actual widget
    const double postItNoteHeight = 200.0;
    // Example spacing between rows - adjust as necessary
    const double spacingBetweenRows = 20.0;

    // Total height for the two PostItNotes and the spacing
    const double totalHeight = (2 * postItNoteHeight) + spacingBetweenRows;

    return SizedBox(
      height: totalHeight, // Updated the height value here
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: (notes.length / 2).ceil(), // Use the calculated column count
        reverse: true, // New items appear on the left
        itemBuilder: (context, columnIndex) {
          // Calculate the indices for the notes
          final int index1 = columnIndex * 2;
          final int? index2 = index1 + 1 < notes.length ? index1 + 1 : null;

          return Container(
            width:
                250, // This should be the width of your PostItNote or however wide you want each item to be
            margin: const EdgeInsets.symmetric(
                horizontal: 5, vertical: 20), // Spacing between items
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    // Define the exact height for the PostItNote if necessary, or leave as Expanded for automatic sizing
                    height: postItNoteHeight,
                    margin: const EdgeInsets.only(
                        bottom: 8), // Spacing at the bottom of the first note
                    child: PostItNote(
                      text: notes[index1],
                    ),
                  ),
                ),
                if (index2 != null)
                  Expanded(
                    child: SizedBox(
                      height: postItNoteHeight,
                      child: PostItNote(
                        text: notes[index2],
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  final FirebaseAnalytics analytics; // Add this line

  const FooterWidget({super.key, required this.analytics});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors
          .darkGrey, // Assuming this is the background color of your footer
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Align BA on the left, LI and TW on the right
              children: [
                Image.asset('assets/images/balogo.png',
                    height: 30), // Adjust the path and size as needed
                Row(
                  children: [
                    InkWell(
                      onTap: () => _launchURL(
                          'https://www.linkedin.com/company/boogyboogy/'),
                      child: Image.asset('assets/images/linkedin.png',
                          height: 30), // Adjust the path and size as needed
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () =>
                          _launchURL('https://twitter.com/letsboogyboogy'),
                      child: Image.asset('assets/images/twitter.png',
                          height: 30), // Adjust the path and size as needed
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
                height: 20), // Spacing between social icons and Privacy & Terms
            Column(
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Left align Privacy
                  children: [
                    InkWell(
                      onTap: () =>
                          _launchURL('https://www.letsboogyboogy.com/privacy'),
                      child: const Text(
                        'Privacy Policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white, // Underline color

                          color: AppColors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.start, // Left align Terms
                  children: [
                    InkWell(
                      onTap: () =>
                          _launchURL('https://www.letsboogyboogy.com/terms'),
                      child: const Text(
                        'Terms & Conditions',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white, // Underline color

                          color: AppColors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
                height:
                    20), // Spacing between Privacy & Terms and Copyright & email
            Column(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Align Copyright at the left and email at the right
              children: [
                const Text(
                  'Copyright 2024 Booger Aids LLC',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 10,
                  ),
                ),
                InkWell(
                  onTap: () => _launchURL('mailto:cheers@letsboogyboogy.com'),
                  child: const Text(
                    'cheers@letsboogyboogy.com',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.white, // Underline color

                      color: AppColors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);

    analytics.logEvent(
      name: 'link_click',
      parameters: {
        'url': urlString,
      },
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class PeopleLineWidget extends StatelessWidget {
  final List<String>
      peopleImages; // Your list of asset paths for the people images

  const PeopleLineWidget({
    super.key,
    required this.peopleImages,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      // Use LayoutBuilder for responsive design
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: CustomPaint(
                size: Size(constraints.maxWidth, 1), // Line size
                painter: _LinePainter(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: peopleImages.map((path) {
                return Flexible(
                  // Wrap each image with Flexible
                  child: Image.asset(
                    path,
                    // width: 50, // Set your desired width for the images
                    height: 70, // Set your desired height for the images
                    fit: BoxFit.fill,
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

// Custom Painter for the line
class _LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.white // Set the color to white
      ..strokeWidth = 2; // Set the desired line width
    // Draw the line at the bottom of the canvas
    canvas.drawLine(
        Offset(0, size.height), Offset(size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key, required this.analytics});

  final FirebaseAnalytics analytics;

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  List<String>? notes;

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection('intros')
        .where('sent', isEqualTo: true)
        .limit(20)
        .get()
        .then((intros) {
      setState(() {
        notes = intros.docs
            .map((intro) => intro.data()['postIt'] == null
                ? ''
                : intro.data()['postIt'].replaceAll(r'\n', '\n') as String)
            .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: SingleChildScrollView(
        // Use SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Align items to start
            children: [
              if (!isMobile)
                Container(
                  width: double.infinity,
                  color: AppColors.green, // Choose an appropriate color
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Made for mobile devices, if you\'re on desktop...it\'s a feature not a bug ;)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.darkGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              const SizedBox(height: 30), // Spacing
              Padding(
                padding: const EdgeInsets.only(
                    left: 16), // Left padding of 16 pixels
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // Space between the main axis
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align items to the top
                  children: [
                    Image.asset(
                      'assets/images/boogyTextArt.png',
                      width: 125, // Adjusted size
                    ),
                    Transform.translate(
                      offset: const Offset(
                          30, -30), // Moves the image -50 to the right
                      child: Image.asset(
                        'assets/images/boogyLogoRotated.png',
                        width: 80, // Adjusted size
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16), // Adjust the left padding value as needed
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      // This ensures that the text column does not overflow
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Effortlessly network through texts",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.green,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10), // Spacing
                          const Text(
                            "People are like boogers, pick the wrong ones & life gets messy - stop digging & let Boogy find your gold.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          const SizedBox(height: 20), // Spacing for the button
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ElevatedButton(
                              onPressed: () {
                                widget.analytics.logEvent(
                                  name: 'cta_button_click',
                                  parameters: <String, dynamic>{
                                    'button': 'Get my 3 free intros',
                                  },
                                );
                                GoRouter.of(context).go('/login');
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: AppColors.darkGrey,
                                backgroundColor: AppColors.yellow,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 20),
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              child: const Text('Get my 3 free intros'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 0), // Adjust the offset as needed
                      child: Image.asset(
                        'assets/images/introMessage.png', // Replace with your image's path
                        width: 150, // Adjust the width as needed
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Connection Wall",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "See the people brought together by Boogy.",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 400,
                      child: WallOfFame(notes: notes ?? []),
                    ),
                    InkWell(
                      onTap: () =>
                          _launchURL('https://twitter.com/letsboogyboogy'),
                      child: const Text(
                        'See on Twitter/X instead',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white, // Underline color
                          color: AppColors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 16), // Left padding of 16 pixels
                    child: Text(
                      "How it works",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16, top: 8), // Adjust padding as needed
                    child: Text(
                      "1) Sign-up by answering a few quick questions to initialize Boogy magic.",
                      style: TextStyle(
                        // Customize the style of your additional text as needed
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16, top: 8), // Adjust padding as needed
                    child: Text(
                      "2) Boogy finds match & sends both people a message for double opt-in.",
                      style: TextStyle(
                        // Customize the style of your additional text as needed
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16, top: 8), // Adjust padding as needed
                    child: Text(
                      "3) When Boogy gets green light the intro is made through a group chat.",
                      style: TextStyle(
                        // Customize the style of your additional text as needed
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16), // Left padding of 16 pixels
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Created by master networkers",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "We 10x'd our careers by making the right connections & made Boogy to help others do the same.",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/austinStick.png',
                                height: 100, fit: BoxFit.cover),
                            InkWell(
                              onTap: () =>
                                  _launchURL('https://www.austinyoshino.com'),
                              child: const Text(
                                'Austin',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        AppColors.white, // Underline color

                                    color: AppColors.white,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/rishabStick.png',
                                height: 100, fit: BoxFit.cover),
                            InkWell(
                              onTap: () => _launchURL(
                                  'https://www.linkedin.com/in/rishabnayak/'),
                              child: const Text(
                                'Rishab',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        AppColors.white, // Underline color

                                    color: AppColors.white,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('assets/images/manveeStick.png',
                                height: 100, fit: BoxFit.cover),
                            InkWell(
                              onTap: () => _launchURL(
                                  'https://www.linkedin.com/in/manvee-bansal/'),
                              child: const Text(
                                'Manvee',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor:
                                        AppColors.white, // Underline color

                                    color: AppColors.white,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    const Text(
                      "Ready to 10x your network?",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Join a kick-@ss network of CEO's, GP's, builders.",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 10), // Spacing
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          widget.analytics.logEvent(
                            name: 'cta_button_click',
                            parameters: <String, dynamic>{
                              'button': 'Get my 3 free intros',
                            },
                          );
                          GoRouter.of(context).go('/login');
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: AppColors.darkGrey,
                          backgroundColor: AppColors.yellow,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        child: const Text('Get my 3 free intros'),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              const PeopleLineWidget(
                peopleImages: [
                  'assets/images/stickBottom1.png',
                  'assets/images/stickBottom2.png',
                  'assets/images/stickBottom3.png',
                  'assets/images/stickBottom4.png',
                  'assets/images/stickBottom5.png',
                  'assets/images/stickBottom6.png',
                  'assets/images/stickBottom7.png',
                  'assets/images/stickBottom8.png',
                ],
              ),
              const SizedBox(height: 20),
              FooterWidget(
                analytics: widget.analytics,
              ), // This adds the footer to your landing screen layout
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
