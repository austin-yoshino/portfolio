import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

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
                          AssetImage("assets/images/austinHeadshot.png"),
                      radius: 40,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Text>[
                        Text(
                          "Austin Yoshino",
                          style: TextStyle(
                            color: AppColors.gold,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Portfolio",
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
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
                      "About",
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Product builder, growth hacker, & business operator currently looking for whats next",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Highlights:",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- Exited social x ai start up with 56% 28-day retention, 40/60% organic growth, & 99%+ crash-free rates\n- Accepted into accelerator backed by Tetris for sports-tech start up\n- Helped launch 12 new products at seed to sale cannabis operation\n- 10x'd fundraising for college fraternity",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Links:",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- ay@austinyoshino.com",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    InkWell(
                      onTap: () =>
                          _launchURL('https://github.com/austin-yoshino'),
                      child: const Text(
                        '- Github',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchURL(
                          'https://www.linkedin.com/in/austin-yoshino/'),
                      child: const Text(
                        '- LinkedIn',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () =>
                          _launchURL('https://www.instagram.com/geinyuhs/'),
                      child: const Text(
                        '- Instagram',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => _launchURL('https://twitter.com/geinyuhs'),
                      child: const Text(
                        '- Twitter / X',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Showcase:",
                      style: TextStyle(
                        color: AppColors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    // InkWell(
                    //   onTap: () =>
                    //       _launchURL('https://austinyoshino.com/pitch-decks'),
                    //   child: const Text(
                    //     '- Pitch Decks',
                    //     style: TextStyle(
                    //       decoration: TextDecoration.underline,
                    //       decorationColor: AppColors.white,
                    //       color: AppColors.white,
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //     ),
                    //   ),
                    // ),
                    // InkWell(
                    //   onTap: () => _launchURL(
                    //       'https://austinyoshino.com/product-designs'),
                    //   child: const Text(
                    //     '- Product Designs',
                    //     style: TextStyle(
                    //       decoration: TextDecoration.underline,
                    //       decorationColor: AppColors.white,
                    //       color: AppColors.white,
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //     ),
                    //   ),
                    // ),
                    // InkWell(
                    //   onTap: () =>
                    //       _launchURL('https://austinyoshino.com/photographs'),
                    //   child: const Text(
                    //     '- Photographs',
                    //     style: TextStyle(
                    //       decoration: TextDecoration.underline,
                    //       decorationColor: AppColors.white,
                    //       color: AppColors.white,
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //     ),
                    //   ),
                    // ),
                    InkWell(
                      onTap: () =>
                          _launchURL('https://austinyoshino.com/resume'),
                      child: const Text(
                        '- Resume',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Work",
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Cofounder of Joyn (exited): social messaging platform designed to enrich 1:1 interactions & connections",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- Launched full product available on iOS, Android, Mac, & Windows\n- Raised preseed round in Q1 2023\n- 56% 28-day retention, 40/60% monthly growth, & 99%+ crash-free rates",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () => _launchURL('https://austinyoshino.com/joyn'),
                      child: const Text(
                        '- Learn more',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Cofounder of Phenom: marketplace that connected professional athletes & kids for coaching lessons",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- Accepted into Blue Startups accelerator (backed by Tetris)\n- Worked with sports agency in LA & MLB all-star athlete\n- Conducted pilot validating \$250/hour price point for lessons",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    // const SizedBox(height: 5),
                    // InkWell(
                    //   onTap: () =>
                    //       _launchURL('https://austinyoshino.com/phenom'),
                    //   child: const Text(
                    //     '- Learn more',
                    //     style: TextStyle(
                    //       decoration: TextDecoration.underline,
                    //       decorationColor: AppColors.white,
                    //       color: AppColors.white,
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 10),
                    const Text(
                      "Special Projects at Noa Botanicals: seed to sale cannabis operation",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- Implemented new tech stack\n- Helped launch 12 new products\n- Broke monthly & daily sales records for 4/20 event",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    // const SizedBox(height: 5),
                    // InkWell(
                    //   onTap: () => _launchURL('https://austinyoshino.com/noa'),
                    //   child: const Text(
                    //     '- Learn more',
                    //     style: TextStyle(
                    //       decoration: TextDecoration.underline,
                    //       decorationColor: AppColors.white,
                    //       color: AppColors.white,
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w300,
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 10),
                    const Text(
                      "Advisor",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- Technical Product for Coincerge: venture studio building a crypto-native PoS, wallet, & currency\n- Strategy / Growth for aVenture (Techstars '23): research platform for VC's",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    const SizedBox(height: 10),
                    const Text(
                      "Freelance",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- Dilligence for Pono Capital (SPAC) = deal announced in Aug 2023\n- Marketing campaigns for aVenture Investment Funds = 7-figures in waitlist commitments\n- Engineering for SeeRescue Corporation = 3-D printed prototype of patented device",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Education",
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Mechanical Engineering at University of Hawaii at Manoa",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Built autonomous aerial & ground drone (senior project)\n- Won \$50k in grant funding for medical device start up = 3-D printed prototype of gyroscopically stabalized gait trainer\n- Grand Treasurer / Social Chair for Kappa Sigma Fraternity = 10x'd fundraising",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Power Writing by Shaan Puuri",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Online copywriting course covering cold emails, social media, pitching, headlines, landing pages, & company updates.\"Some write to express, some write to impress, power-writing gets results\"",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Human-Centered Design by eCornell",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Online UX course covering design essentials, user research, user personas, developing a UX concept, prototyping, UX feedback & evaluating usability",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Extras",
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Caregiver to little brother diagnosed with cerebral palsy",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "My brother embodies world-class reselience & optimism, 2 superpowers I inherited",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Ran marathon (5:36) in Dec 2023",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "When I committed running 26.2 miles sounded crazy, it was the ultimate test of mental fortitude, discipline, & consistency",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Started non-profit helping individuals with special needs express their unique life prespectives through art",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Conducted pilot in summer 2023 with outstanding PMF heuristics",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Learned how to code using chatGPT",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Started during Joyn when we had an overload of tasks, currently still refining my front-end skills",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Went viral on Twitter (294k impressions & 30k engagements)",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () => _launchURL(
                          'https://x.com/geinyuhs/status/1447029262154825736?s=20'),
                      child: const Text(
                        'See Tweet',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Lived nomadically between 2021 -> 2023 (mostly NYC & LA)",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "For awhile, home was an airplane seat",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Corresponded with Mark Cuban via cold email",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "Researched that he often responds to customer complaints so I posed as an angry customer to get his attention",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skills",
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "\"Superpowers\": resilient optimism + relentless drive to figure things out",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Core Compentencies:",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Leadership, storytelling, empathy, product development / engineering, user experience, fundraising, creative direction, copywriting",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Technical Toolkit:",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "openAI / chatGPT, Flutter, DALLE, Figma, Canva, Notion, Discord, Asana, Github / Github Priojects, Microsoft Office, Software Architecture, VS Code, 3-D Printing / Modeling, Zapier. Beehiiv, Squarespace, Apollo, Google Cloud",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Media",
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () => _launchURL(
                          'https://pace.shidler.hawaii.edu/faces-of-pace/austin-yoshino/'),
                      child: const Text(
                        '- Faces of PACE',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () => _launchURL(
                          'https://www.bluestartups.com/blog/cohort-13-founder-austin-yoshino-featured-in-inno-under-25/'),
                      child: const Text(
                        '- Innovators Under 25',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () => _launchURL(
                          'https://www.manoanow.org/kaleo/features/40-000-total-awarded-to-three-uh-student-startups/article_4049cff4-6277-11ea-869f-ff0ceb47af40.html'),
                      child: const Text(
                        '- \$40,000 total awarded to three UH student startups',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () =>
                          _launchURL('https://www.hawaiibusiness.com/gsea-19/'),
                      child: const Text(
                        '- Student Entrepreneurs Honored for Actual Businesses, Not Just Ideas',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () =>
                          _launchURL('https://www.eng.hawaii.edu/yoshino-eo/'),
                      child: const Text(
                        '- UH student wins fifth-annual Global Student Entrepreneur Awards statewide qualifier',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () => _launchURL(
                          'https://www.linkedin.com/feed/update/urn:li:activity:7096891531101433856?updateEntityUrn=urn:li:fs_feedUpdate:(V2,urn:li:activity:7096891531101433856)'),
                      child: const Text(
                        '- Austin Yoshino Building Social, AI x Social, Social Presence on the Blockchain',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () => _launchURL(
                          'https://www.manoanow.org/kaleo/features/an-innovative-invention/article_0d7d5af4-50d1-11e9-a6f3-43078fa71fd1.html'),
                      child: const Text(
                        '- An innovative invention, Austin Yoshino’s customizable gait trainer',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    InkWell(
                      onTap: () => _launchURL(
                          'https://www.hawaii.edu/news/2018/12/05/2018-breakthrough-innovation-challenge/'),
                      child: const Text(
                        '- Customizable walking device wins innovation challenge',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.white,
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "www.austinyoshino.com",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

//Writings should be a separate page
//Case studies should also be a separate page
