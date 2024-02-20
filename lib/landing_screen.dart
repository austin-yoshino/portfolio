import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/austinHeadshot.png"),
                      radius: 30,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Austin Yoshino",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
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
                      "- Exited social x ai start up with 56% 28-day retention, 40/60% organic growth, & 99%+ crash-free rates",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- Accepted into accelerator backed by Tetris for sports-tech start up",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- Helped launch 12 new products at seed to sale cannabis operation",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "- 10x'd fundraising for college fraternity",
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
                          decorationColor: AppColors.white, // Underline color
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
                          decorationColor: AppColors.white, // Underline color
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
                          decorationColor: AppColors.white, // Underline color
                          color: AppColors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
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
                      "Work",
                      style: TextStyle(
                        color: AppColors.gold,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Cofounder of Joyn (exited): social messaging platform designed to enrich 1:1 interactions & connections",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Launched full product available on iOS, Android, Mac, & Windows",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Raised preseed round in Q1 2023",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- 56% 28-day retention, 40/60% monthly growth, & 99%+ crash-free rates",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Cofounder of Phenom: marketplace that connected professional athletes & kids for coaching lessons",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Accepted into Blue Startups accelerator (backed by Tetris)",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Worked with sports agency in LA & MLB all-star athlete",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Conducted pilot validating \$250/hour price point for lessons",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Special Projects at Noa Botanicals: seed to sale cannabis operation",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Implemented new tech stack",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Helped launch 12 new products",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Broke monthly & daily sales records for 4/20 event",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Advisor",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Technical Product for Coincerge: venture studio building a crypto-native PoS, wallet, & currency",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Strategy / Growth for aVenture: research platform for VC's",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Freelance",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Dilligence for Pono Capital (SPAC) = deal announced in Aug 2023",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Marketing campaigns for aVenture Investment Funds = 7-figures in waitlist commitments",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Engineering for SeeRescue Corporation = 3-D printed prototype of patented device",
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
                      "- Built autonomous aerial & ground drone (senior project)",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Won \$50k in grant funding for medical device start up = 3-D printed prototype of gyroscopically stabalized walking assistive device",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "- Grand Treasurer / Social Chair for Kappa Sigma Fraternity = 10x'd fundraising",
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
                      "My brother embodies world-class reselience & relentless optimism, 2 superpowers I inherited from him",
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
                      "ABC",
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Went viral on Twitter (294k impressions, 30k engagements)",
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
            ],
          ),
        ),
      ),
    );
  }
}

//SECTIONS: SKILLS PERSONAL | SOCIAL IMPACT | CASE STUDIES | ADD CAREGIVER TO MY BROTHER WITH CEREBRAL PALSY + RELENLESS & OPTIMISM | MEDIA
//ADD RESUME TO LINKS

//ADD DESIGN + PRODUCT PORTFOLIO