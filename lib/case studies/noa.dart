import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class NoaScreen extends StatefulWidget {
  const NoaScreen({super.key});

  @override
  State<NoaScreen> createState() => _NoaScreenState();
}

class _NoaScreenState extends State<NoaScreen> {
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
                      backgroundImage: AssetImage("assets/images/noaLogo.png"),
                      radius: 40,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Text>[
                        Text(
                          "Noa Botanicals",
                          style: TextStyle(
                              color: AppColors.noaLightGreen,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Kegger.ttf"),
                        ),
                        Text("Seed to sale medical cannabis dispensary",
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
                        color: AppColors.noaLightGreen,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Barlow.ttf",
                      ),
                    ),
                    const Text(
                      "By: Austin Yoshino, Special Projects",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Barlow.ttf",
                      ),
                    ),
                    const Text(
                      "Oct 2020 to Jul 2021",
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
                              color: AppColors.noaLightGreen,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Barlow.ttf",
                            ),
                          ),
                          const Text(
                            "Noa is a vertically integrated cannabis operation with 3 retail stores & a grow facility in Honolulu, Hawaii doing 8-figures in annual sales.",
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
                            "- Implemented new tech stack (ERP, POS, & CRM)\n- Helped launch 12 new products\n- Broke monthly & daily sales records for 4/20 event",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Barlow.ttf",
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Links:",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () => _launchURL('https://noacares.com'),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    'assets/images/websiteIcon.png',
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Live-Streaming App",
                                  style: TextStyle(
                                    color: AppColors.noaLightGreen,
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
                                          color: AppColors.noaLightGreen,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Barlow.ttf",
                                        ),
                                      ),
                                      Text(
                                        "We were accepted into Cohort 13 (backed by Tetris, <2% acceptance) which ran from August to November 2021. This was a great opportunity to learn in tandem with building, while expanding my network. It ended with a demo day in NYC, where I stayed for a couple months to maxamize opportunities.",
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
                                                color: AppColors.noaLightGreen,
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
                                                      color: AppColors
                                                          .noaLightGreen,
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
                                                      color: AppColors
                                                          .noaLightGreen,
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
