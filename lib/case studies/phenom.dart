import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class PhenomScreen extends StatefulWidget {
  const PhenomScreen({super.key});

  @override
  State<PhenomScreen> createState() => _PhenomScreenState();
}

class _PhenomScreenState extends State<PhenomScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGrey,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/phenomLogo.png"),
                      radius: 40,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Text>[
                        Text(
                          "Phenom Inc",
                          style: TextStyle(
                              color: AppColors.phenomBlue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Kegger.ttf"),
                        ),
                        Text(
                            "Connecting pro athletes & kids for coaching lessons",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Barlow.ttf",
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Case Study",
                      style: TextStyle(
                        color: AppColors.phenomBlue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Barlow.ttf",
                      ),
                    ),
                    const Text(
                      "By: Austin Yoshino, Cofounder & CEO",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Barlow.ttf",
                      ),
                    ),
                    const Text(
                      "Aug 2020 to Aug 2022",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Barlow.ttf",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "About",
                            style: TextStyle(
                              color: AppColors.phenomBlue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Barlow.ttf",
                            ),
                          ),
                          const Text(
                            "Phenom orginally started as a live streaming app for youth sports. We launched during covid when parents couldn't attnend games making us a necessity, however, the market quickly moved to a race towards zero business model. We then pivoted to a coaching marketplace, leveraging our connections with professional athletes.",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontFamily: "Barlow.ttf",
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Highlights:",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: "Barlow.ttf",
                            ),
                          ),
                          const Text(
                            "- Accepted into Blue Startups Accelerator (backed by Tetris)\n- Worked with sports agency in LA & MLB all-star athlete\n- Conducted pilot validating \$250/hour price point for lessons",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Barlow.ttf",
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Live-Streaming App",
                                  style: TextStyle(
                                    color: AppColors.phenomBlue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Barlow.ttf",
                                  ),
                                ),
                                Text(
                                  "The app was called Shaka Sports, it was my first software endavour built in React Native & published to the Apple Store. We launched by partnering with high schools & youth sports organizations to quickly grow to a few hundred happy parents who could now watch their kids games",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 14,
                                    fontFamily: "Barlow.ttf",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Blue Startups Accelerator",
                                        style: TextStyle(
                                          color: AppColors.phenomBlue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Barlow.ttf",
                                        ),
                                      ),
                                      Text(
                                        "We were accepted into Cohort 13 (backed by Tetris, <2% acceptance) which ran from August to November 2021. This was a great opportunity to learn in tandem with building, while increasing my network. It ended with a demo day in NYC, where I stayed for a couple months to maxamize opportunities.",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 14,
                                          fontFamily: "Barlow.ttf",
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Coaching Marketplace",
                                              style: TextStyle(
                                                color: AppColors.phenomBlue,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Barlow.ttf",
                                              ),
                                            ),
                                            Text(
                                              "Dustin's son was taking pitching lessons from MLB all-star Kirby Yates, only made possible through insider connections. We saw an opportunity to unlock access for others & pivoted to building a coaching marketplace. We leveraged our relationships with professional athletes & youth sports teams to conduct a pilot that validated a \$250/hour price point. While this went well & showed promising signs of pmf, we ran into issues as we tried to move beyond...it's very difficult to scale famous people's time.",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Barlow.ttf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Fundraising",
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.phenomBlue,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Barlow.ttf",
                                                    ),
                                                  ),
                                                  Text(
                                                    "I cofounded this company with my business partner & mentor Dustin Shindo who intially invested \$50k & served as the Chairman. We went on to raise a little over \$100k from other high net worth individuals & venture capital firms.",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily: "Barlow.ttf",
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Lessons",
                                                    style: TextStyle(
                                                      color:
                                                          AppColors.phenomBlue,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Barlow.ttf",
                                                    ),
                                                  ),
                                                  Text(
                                                    "1) First time fundraising...",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Barlow.ttf",
                                                    ),
                                                  ),
                                                  Text(
                                                    "This was my first time successfully raising money for a startup. At this time, I had a very limited investor network & forcing me to do a lot of cold outreaches. Our first investor came from Twitter who invested just \$2.5k.",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily: "Barlow.ttf",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "2) First time launching a software product...",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: "Barlow.ttf",
                                                    ),
                                                  ),
                                                  Text(
                                                    "This was my first time doing anything in hardware (was a mech eng). I made a very painful mistake of hiring the wrong developers & choosing the wrong architecture for the live streaming app. In order to launch in time to take advantage of covid protocols I quickly sourced new developers & was up till 3am to rewrite the app.",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily: "Barlow.ttf",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () =>
                                _launchURL('https://austinyoshino.com'),
                            child: const Text(
                              'Back to Portfolio',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.white,
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Barlow.ttf",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
