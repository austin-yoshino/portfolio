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
                      "Oct 2022 to Nov 2023",
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
                                              "Great social products have 3 pillars:\n1) Novel way to communicate\n2) Platform-specific interaction layer\n3) Introductions to people you wouldn’t otherwise meet\n\nFor example Instagram:\n1) Introduced new communication channels through replies, likes, & comments\n2) Curated specific interactions through story replies & posts which provided proprietary information for users to base interactions of of\n3) Showed you new people through discovery, mutual follows, suggested posts, & tags\n\nJoyn was building a social product rooted in quality instead of quantity, envisioning a sanctuary for real connection by:\n1) Making communication private (no unsolicited DM’s) & frictionless (no tedious transactions)\n2) Fostering deeper interactions through thoughtful & inspirational content\n3) Curating introductions that were high-filtered\n\nLaunching a rich variety of features required intense agile management practices, roadmapping prioritization, & efficient management practices. A couple months before our launch I noticed a backlog overload of tasks, so along with re-prioritization I taught myself to code leveraging chatGPT to make direct contributions allowing us to launch on-time. Ultimately, we achieved 56% 28-day retention through the craftsmanship of the following features;",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Privacy:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "- Both people had to accept connections to interact\n- No public search access, connections could only be added via QR code, unique link, from contacts, or secret phrase\n- Nominations (superlatives) for hand-picked invites",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
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
                                            Text(
                                              "- End to end encryption\n- Pre, failed, & re sending states\n- Audio, photo, video, file, & gifs\n- Conversation channels\n- Auto-translate\n- Audio & video calls\n- Group chats\n- Custom reactions + typing indicator\n- Edit, delete, reply, & move (across channels) messages\n- AI-generated messages with context ",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Calendar:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "- Connect Google, Outlook, & iCloud calendars to sync events\n- Share schedules with option to set availability preferences (personal, work, or custom)\n- In-chat event creation with Zoom, Google Meet, or in-person location options",
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
                                            Text(
                                              "- Q&A feed of AI-generated, thought provoking questions\n- Used series of prompts for varying topics",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Introductions:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "- Algorithmic + AI analysis of user profiles to suggestion relevant connections\n- Mechanism to facilitated introduction after double-opt in is approved",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Profiles:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "- Blue check verification\n- Photo carousel with dynamic prompts\n- Gamified star rankings for power users",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "“Devils in the details”...getting from 0->80% was easy, 80-90% was hard, but 90-99% was grueling. Here are some specific examples of how we optimized Joyn to deliver the best experience possible;",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Onboarding:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "The biggest design decision here was the tradeoff of friction vs information. For the best user experience we only allowed phone number sign-ups, no emails or SSO’s which often lead to multiple account creations spurring frustration & confusion. Initially, during on-boarding we just asked a couple basic questions to get people in the app as fast as possible. While this was great for conversions, interactions were low because we didn’t gather enough user data or provide enough education to properly motivate new users.\nOur final iteration, featured a mix of education & information gathering so users understood the benefits of completing onboarding + guiding action steps to incentivize first interactions. Since the process became longer we added a few small, yet pivotal features to reducing friction including; auto-progression after filling in all the fields, accounting for keyboards when displaying the next button, and auto-fills based on device information. ",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Messaging Loading / Sending Speed:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "In order for Joyn to garner enough trust to be used for everyday communication we prioritized message speed. When we first launched, loading was slow if cellular connection was bad & required an occasional refresh for messages to show. While this was something we noticed in other messaging platforms (like Discord) we knew we needed to solve it & implemented a few measures including; local data cacheing, pre/fail/re-send sates, manual swipe refreshes, & automatic background refreshes for low internet cases. Ultimately, we conquered the technical challenges where this became an afterthought.",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Color Palette:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Our first set of feedback told us that while our color choices were great, the overall app was too colorful resulting in confusion. We switched our philosophy to only coloring things that we wanted users to focus on, simplifying the experience while keeping Joyn aesthetically pleasing.",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Finding & Adding People on Joyn:",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "We made the platform private but only allowing interactions when people are mutually connected; eliminating public searches, spam, & unsolicited DM’s. While privacy was a major value prop, this made adding / finding people on Joyn difficult. We implemented typical practices like finding phone contacts, sharing unique connection links, & scanning QR codes, but knew we also had to innovate to overcome this barrier. We pondered on adding usernames, but didn’t want to encourage anon’s...after a few iterations we released “secret phrases” - a custom expression that allowed people to remain private, yet easily findable to privileged individuals.",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "99%+ Crash-Free Rates",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "We upheld a standard of excellence for product quality. To achieve this, we implemented extensive logging tools like Sentry.io which allowed us to easily find, replicate, & fix bugs. Over the course of 2 months we optimized Joyn from 92 - 99%+ crash-free rates.",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Avaialble on all Platforms / Devices",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Joyn was available on iOS, Android, MacOS, & Windows with mobile + tablet specific layouts to ensure that we were usable for everyday communication across all user types.",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Haptic + Audio Feedback",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "We added haptic & audio feedback to enhance the experience of popularly used features like; generating AI-messages, pulling to refresh messages, switching message channels, or reacting to a message. The idea was to provide physical & auditory signals making the actions addicting.",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Tech Stack",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "We used a tech stack that aligned with our primary goals of scalability, development speed, & reliability. This included;\n- Languages: Flutter, NodeJS, & Golang\n- API’s: Twilio, DeepL, openAI, Revenue Cat, AppsFlyer, Stripe\n- Infrastructure: AWS, CodeMagic(CI/CD deployment), Grafana, MixPanel, Sentry, Swagger, Github + Github Projects",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "Future Roadmap",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Our plans for Joyn’s future included an ai-powered personal relationship manager, more data points for connection suggestions, and leveraging ai to execute actions (ie: scheduling).",
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
                                              "Branding + Messaging",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "The Joyn brand needed to ride the line of social / professional. We crafted a logo that was simple yet distinct using a dark mode-based color palette with simple yet defining contrasting colors. The most important decision was making our messages purple with a slight gradient to differentiate from iMessage (blue) & Android (green).\nI believe one the most important (yet severely underrated) parts of bringing something new into the world is the “one-liner” - a short sentence that incites to learn more. My philosophy is hate it or love it as long as you can’t ignore it we win. The stronger the emotional response the better. One day, after sending a survey to gauge our audiences perception of networking, someone responded “f*ck networking”. From that day on, Joyn’s one-liner was the “anti-networking, networking app”.",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontFamily: "Satoshi-Black.otf",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              "User Acquisition: growth-hacking a newsletter to 30k subs in 2 months",
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: "Satoshi-Black.otf",
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              "Due to our commitment of building a social super-app, we allocated majority of funds to product. This presented our biggest challenge: acquiring users with no budget. Aside from distributing through our personal networks, I growth-hacked our newsletter to 30k subscribers in 2 months via a cold email -> Beehiiv funnel. This allowed us to test messaging & conduct market research while enabling re-targeting for app downloads. Despite mostly being cold leads we boasted an averaged a 33.92% open + 4.89% click through rates with a modest 1.33% unsubscribe rate. When I left, Joyn had around a 1k downloads & was growing monthly at 60%.",
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
                                                    "Leadership",
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
                                                    "Our team was intentionally crafted on unique insights, experience, & talent positioning ourselves to both innovate & execute;",
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
                                                    "Dustin Shindo, CoFounder & Chairman: \$2b+ in financing deals + 4 IPO's",
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
                                                    "We met through a professor who said; \"you remind me of Dustin, go meet him\". After meeting, I offered to work for free just to stay in his orbit. Weekly meetings led to start-up talk which eveuntally resulted in us Cofounding 2 companies together (Joyn + Phenom).",
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
                                                    "Rishab Nayak, CoFounder & CTO: M.S. Computer Science from Boston University + 2x Tech Founder",
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
                                                    "Dominique Calaguas, Product Designer",
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
                                                    "She was my first hire & was specifically chosen by her background in graphic design, psychology, & gaming. She was with the team since day 1 & was crucial in helping bring my vision to life; tgether we produced over 400 mockups, 100 custom graphics, & 200 prototypes.",
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
                                                    "To remain cost efficient we built our dev team internationally. At the beginning, we worked with 2 agencies operating with a team of 15 to quickly build a proof of concept. After the POC, we internalized the best developers focusing our team to 5; improving moral, productivity, & quality. In order to mitigate inefficiencies of working across timezones + language barriers we wrote detailed documentation of tasks, implemented asynchronous communication practices, & integrated logging tools like Sentry.io.",
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
                                                    "1) There is such a thing as moving too fast",
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
                                                    "Our ambition was to take Joyn public in 2024. To even be considered for a SPAC deal we needed a minimum \$30m valuation by the end of 2023 & conducted company operations accordingly. I believe this forced us to try to do to much in too little time, next time I would prefer to let momentum dictate the pace…crawling towards PMF so we have the capacity to sprint when the time is right.",
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
                                                    "2) Product & distribution are yin & yang",
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
                                                    "“First time founders focus on product, second time founders focus on distribution” is a well known philosophy in start-ups. After attempting both & seeing the pros / cons of each I believe, that like most cases it’s a neither one or the other, but a symbiotic balance. One can’t exist without the other & should be built in tandem.",
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
                                                    "3) When choosing target market: needs > access",
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
                                                    "We had an unfair distribution advantage in Japan thanks to my Cofounders status. While this was a great opportunity, we overlooked a major aspect in this customer segment: Japan has a higher quality standard than the US. In order to reach their standard of excellence we pushed to develop fully-flushed features, make Joyn available on all platforms / devices, & bug bash our way to 99%+ crash-free rates ultimately producing a great product. However, this intense focus on product pushed back our launch considerably. A refined approach would be to select a customer segment where the product need outweighs the tolerance for minor initial product inconveniences.",
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
                          const SizedBox(height: 5),
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
                                fontFamily: "Satoshi-Black.otf",
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

//Add management practices to Product