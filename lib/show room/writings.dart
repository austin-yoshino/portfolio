import 'package:flutter/material.dart';
import 'package:portfolio/colors.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class writingsScreen extends StatefulWidget {
  const writingsScreen({super.key});

  @override
  State<writingsScreen> createState() => _writingsScreenState();
}

// ignore: camel_case_types
class _writingsScreenState extends State<writingsScreen> {
  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
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
                'Writings',
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
                onTap: () => _launchURL('https://austin-yoshino.com'),
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
                'January 1, 2024',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Insights from 2023',
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
                'Poetic interpretataions from some tough lessons',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Words are cheap, but the people who’s words you can trust are priceless',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Trust is best built slowly, brick by brick, action by action. If someone really wanted to they would find a way to make it happen, almost everything else is just an excuse',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'The answer to almost every hypothetical question is “it depends',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Context, reasoning, intentions, goals, execution are often most important than the answer itself",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'If you try to die on every hill you’ll just die',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Choose battles wisely, can’t fight them all",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'The world is full of cheap advice, filter it out asap',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "How not to give cheap advice: understand the context before jumping to conclusions + high-level suggestions should be followed with something concrete",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Just bc someone checks a lot of boxes doesn’t mean they check the right ones',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Not all boxes are created equally. It’s better to have less but more important boxes than vice versa",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'The road to peace crosses bloody battlefields',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Sometimes you have to know what war looks like to know you don’t want to go to war. Peace isn’t found running or hiding from demons, it’s knowing that when they show up I’ll kick their ass again and again",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'The world doesn’t move by timelines, it moves on momentum',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Things in motion stay in motion, things at rest stay at rest. Momentum = force",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Crazy couter-balances crazy',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Ex: intense work is balanced by intense relaxation",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'November 29, 2023',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'What an entrepreneur actually does',
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
                'A real answer to the infanous what to do you question',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'I’ve always found it hard to articulate what an entrepreneur actually does. Essentially, I think it comes down to 2 things: aligning stars & firing bullets.\n\nStars: ideally you get lucky and the stars align themselves, but most times you have to learn to control gravity and force them to align.\n\nBullets: knowing when to pull the trigger is more art than science. I’ve learned to align as many stars as possible before firing because reloading bullets is a lot of work.\n\nSo an over-simplified explanation of what do entrepreneurs actually do?\nWe control gravity, align stars, & pull triggers.',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'November 28, 2023',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'A graphic (but memorable) G2M story',
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
                'Hitting the bullseye of the bullseye',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Let’s say you invented a sex toy for couples.\n\nAfter months of work you’re finally ready to launch, but the question “who’s going to buy this?” fills your mind with anxiety.\n\nClearly, the primary target audience is long-distance couples...bullseye right?\nNot so fast, in today’s over-saturated world bullseye isn’t enough, you need to hit the bullseye of the bullseye.\n\nSo, lets go a step further and define 2 types of long-distance couples:\n1) boyfriend in SF <> girlfriend in LA\n2) boyfriend in SF <> girlfriend in NYC\n\nLike every product in it’s infant stages there’s bugs. Unfortunately, sometimes the guys “substance” leaks out during use. Not ideal, but the show must go on and this is where ultra-precision becomes the make it or break it point.\n\nBecause lets be honest, the first guy will probably decide he’s better off booking a flight or driving up. But the second guy, will clean up his nuts all day long since that’s his only option.\n\nSo theres the secret, find a group of people who need your product so badly they’re willing to “clean their own nuts” to use it...aka the ‘Nut Group’.",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'November 28, 2023',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'My Work Principles',
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
                'Things I believe are the keys to success',
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Art can’t be copied",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "If Dave Chapelle and I said the same joke, who would get more laughs? A work product that is created with the intent to be art is invaluable",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "The best answer should always win",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Decisions shouldn’t be made on power, status or ego, it should be the consensus best answer",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Simplicity is a process",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Getting to the most efficient answer sometimes requires over-thinking until you’re confident enough to be concise",
                style: TextStyle(
                  color: AppColors.darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
