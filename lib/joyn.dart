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
                          const SizedBox(height: 5),
                          InkWell(
                            onTap: () => _launchURL(
                                'https://apps.apple.com/us/app/joyn-chat/id6444626347'),
                            child: const Text(
                              '- Apple Store',
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
                          const SizedBox(height: 5),
                          InkWell(
                            onTap: () => _launchURL(
                                'https://play.google.com/store/apps/details?id=app.joyn.app&hl=en_US'),
                            child: const Text(
                              '- Google Play',
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
                          const SizedBox(height: 5),
                          InkWell(
                            onTap: () => _launchURL(
                                'https://apps.microsoft.com/detail/9NLQP8C3FTR3?hl=en-US&gl=US'),
                            child: const Text(
                              '- Microsoft Store',
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
                                              "Chat: better everyday communication",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "- End to end encryption\n- Message pre-sending, failed-send, & re-send states\n- Local cacheing\n- Audio, photo / videos, files, & gif messages\n- Message channels\n- Auto-translate\n- Voice / audio calls\n- Group chats\n- Message reactions\n- Edit, delete, reply, & move messages across channels\n- AI-generated messages with context",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Calendars: seamlessly find & schedule time",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "- Link Google, Outlook, & iCloud calendars to sync events\n- Share schedules & create / accept / decline events directly in chat\n- Set default avaiabilities (personal, work, custom)\n- Link Zoom / Google Meet for videoconferencing",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Social: enhancing old & fostering new quality connections",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "- Facilitated introductions using algorithmic + AI analysis to determine match quality\n- Q&A social feed with AI-generated questions for sharing thoughtful insights\n- Nominations (superlatives) for hand-picked invites\n- Advanced profile charachteristics, dynamic prompts, gamified star rankings, & verification",
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
                                              "Languages: Flutter / NodeJS / Golang",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "API's: Twilio, DeepL, openAI, Revenue Cat, AppsFlyer, Stripe",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Infrastructure: AWS, CodeMagic(CI/CD deployment), Grafana, MixPanel, Sentry, Swagger",
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
                                              "- Cordi 2.0",
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
                                              "Branding",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "ABC",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "We had no marketing budget so I growth hacked a newsletter to 30k subscribers to drive downloads",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "ABC",
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
                                                    "I recruited this team...",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "Dustin Shindo, Chairman: \$2b+ in financing deals & 4 IPO's",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "We met through a professor who said; \"you remind me of Dustin, go meet him\". After meeting, I offered to work for free just to stay in his orbit. Weekly meetings led to start-up talk which eveuntally resulted in us Cofounding 2 companies together (Joyn + Phenom)",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Rishab Nayak, CTO: M.S. Computer Science from Boston University & 2x Founder",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "We met during Blue Start-ups & were working on different companies at the time but, stayed in touch as we overlapped during our travels through NYC, LA, Boston, SF, & Hawaii. Rishab was back in Hawaii when he mentioned his exit in the prev start-up & I recruited him to Joyn.",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Engineering Team: 5-15 members",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "To stay remain cost-efficient we hired developers internationally.",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Product Designer: Dominique Calaguas",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(height: 5),
                                                  Text(
                                                    "She was my first hire & was with us since day 1. She was specfically choosen because of her background in graphic design, psychology & gaming.",
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
                                                    "Dustin intially invested \$50k for development costs. In Q1 2023 we raised a preseed round of \$200k on a uncapped SAFE. I also executed stock warrant deals at a \$10m valuation.",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
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
                                                    "In Q4 2023 Dustin & I were preparing to raise the next round, but noticed a unfortunate difference in vision. To articulate it, he wants to build a international Whats App & wanted to take down LinkedIn. We mutually & cordially decided that the best path forward for everyone involved was for me to exit via a share sale. I helped with the leadership transition & am still avaialble for advisory calls.",
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
                                                    "There is such a thing as moving too fast",
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
                                                    "Our ambition was to take Joyn public in 2024. To even be considered for a SPAC deal we needed a minimum \$30m valuation by the end of 2023 & conducted company operations accordingly. While this was a great opportunity, it forced us to skip some steps especially in the product & market validation cycle. A refined approach for next time would be to let momentum dictate the pace…crawling towards PMF so we have the capacity to sprint when the time is right.",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Product & distribution are a yin yang balance",
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
                                                    "“First time founders focus on product, second time founders focus on distribution” is a well known quote in the start-up community. After attempting both & seeing the pros / cons of each approach I believe, that like most cases, it’s a symbiotic balance. One can’t exist without the other & should be built in tandem.",
                                                    style: TextStyle(
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontFamily:
                                                          "Satoshi-Black.otf",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Text(
                                                    "Pick your target market based on needs, not access",
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
                                                    "ABC",
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
