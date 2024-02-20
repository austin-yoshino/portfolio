import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class JoynScreen extends StatefulWidget {
  const JoynScreen({super.key});

  @override
  State<JoynScreen> createState() => _JoynScreenState();
}

class _JoynScreenState extends State<JoynScreen> {
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
                      backgroundImage: AssetImage("assets/images/joynLogo.png"),
                      radius: 40,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Text>[
                        Text(
                          "Joyn Corporation",
                          style: TextStyle(
                              color: AppColors.joynblue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Satoshi-Black.otf"),
                        ),
                        Text(
                          "The anti-networking, networking app",
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Satoshi-Black.otf"),
                        ),
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
                        color: AppColors.joynblue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Satoshi-Black.otf",
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "By: Austin Yoshino, Cofounder & CEO",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Satoshi-Black.otf",
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Oct 2022 -> Nov 2023",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Satoshi-Black.otf",
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
                              color: AppColors.joynblue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Re-defining connection with a communication platform leveraging AI to create new social experiences and enable the next generation of advertising",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Highlights:",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "- 56% 28-day retention, 40/60% organic growth, & 99%+ crash-free rates",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "- Launched full product avaialble on iOS, Android, tablet, MacOS, & Windows devices",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "- Raised preseed round in Q1 2023 (\$200k on uncapped SAFE)",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "- Exited via share sale to Cofounder",
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Links:",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: "Satoshi-Black.otf",
                            ),
                          ),
                          const SizedBox(height: 5),
                          InkWell(
                            onTap: () => _launchURL('https://joynchat.com'),
                            child: const Text(
                              '- Website',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: AppColors.white,
                                color: AppColors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                fontFamily: "Satoshi-Black.otf",
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Problem",
                                  style: TextStyle(
                                    color: AppColors.joynblue,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Satoshi-Black.otf",
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "In a explosive era of \"connections\" we're paradoxically isolated",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Satoshi-Black.otf",
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Social platforms emphasize numerical popularity over quality leaving us surrounded, yet alone",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 14,
                                    fontFamily: "Satoshi-Black.otf",
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "- Simple communication apps don't help us stay in touch",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 14,
                                    fontFamily: "Satoshi-Black.otf",
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
                                        "Solution",
                                        style: TextStyle(
                                          color: AppColors.joynblue,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Satoshi-Black.otf",
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Joyn is intentionally desisnged for 1:1 interactions & connections",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: "Satoshi-Black.otf",
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "- Built around real conversations, not posts (with best in class chat features)",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 14,
                                          fontFamily: "Satoshi-Black.otf",
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        "- Supercharged by Cordi, a personal AI that prompts thoughtful insights & connections",
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 14,
                                          fontFamily: "Satoshi-Black.otf",
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
                                              "Product",
                                              style: TextStyle(
                                                color: AppColors.joynblue,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "The Joyn product was built..add private & spam-free platform",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Chat:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "- End to end encryption\n- Message pre-sending, failed-send, & re-send states\n- Local cacheing\n- Audio, photo / videos, files, & gif messages\n- Message channels\n- Auto-translate\n- Voice / audio calls\n- Group chats\n- Message reactions\n- Edit, delete, reply, & move messages across channels\n- AI-generated messages with prev context",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Calendars:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Social:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Tech Stack:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Future Roadmap:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
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
                                              "G2M",
                                              style: TextStyle(
                                                color: AppColors.joynblue,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Joyn is intentionally desisnged for 1:1 interactions & connections",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "- Built around real conversations, not posts (with best in class chat features)",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
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
                                                    "Team",
                                                    style: TextStyle(
                                                      color: AppColors.joynblue,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Joyn is intentionally desisnged for 1:1 interactions & connections",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "- Built around real conversations, not posts (with best in class chat features)",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                                    "Fundraising",
                                                    style: TextStyle(
                                                      color: AppColors.joynblue,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Joyn is intentionally desisnged for 1:1 interactions & connections",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "- Built around real conversations, not posts (with best in class chat features)",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                                    "Exit",
                                                    style: TextStyle(
                                                      color: AppColors.joynblue,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Joyn is intentionally desisnged for 1:1 interactions & connections",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "- Built around real conversations, not posts (with best in class chat features)",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.w300,
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
                                                      color: AppColors.joynblue,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Joyn is intentionally desisnged for 1:1 interactions & connections",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "- Built around real conversations, not posts (with best in class chat features)",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
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


                                // Padding(
                                //   padding: EdgeInsets.symmetric(vertical: 20),
                                //   child: Column(
                                //     crossAxisAlignment:
                                //         CrossAxisAlignment.start,
                                //     children: [
                                //       Text(
                                //         "Solution",
                                //         style: TextStyle(
                                //           color: AppColors.joynblue,
                                //           fontSize: 18,
                                //           fontWeight: FontWeight.bold,
                                //           fontFamily: "Satoshi-Black.otf",
                                //         ),
                                //       ),
                                //       SizedBox(height: 10),
                                //       Text(
                                //         "Joyn is intentionally desisnged for 1:1 interactions & connections",
                                //         style: TextStyle(
                                //           color: AppColors.white,
                                //           fontSize: 14,
                                //           fontWeight: FontWeight.bold,
                                //           fontFamily: "Satoshi-Black.otf",
                                //         ),
                                //       ),
                                //            SizedBox(height: 5),
                                //       Text(
                                //         "- Built around real conversations, not posts (with best in class chat features)",
                                //         style: TextStyle(
                                //           color: AppColors.white,
                                //           fontSize: 14,
                                //           fontFamily: "Satoshi-Black.otf",
                                //           fontWeight: FontWeight.w300,
                                //         ),
                                //       ),
                                //     ],
                                //   ),
                                // ),


//Add Deck + link to apps