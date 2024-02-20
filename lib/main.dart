import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:picklerick/colors.dart';
import 'package:picklerick/firebase_options.dart';
import 'package:picklerick/landing_screen.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  usePathUrlStrategy();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  CustomTransitionPage buildPageWithDefaultTransition<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return CustomTransitionPage<T>(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    );
  }

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
      FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Boogy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Source Code Pro',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkGrey),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        initialLocation: '/',
        observers: [observer],
        routes: [
          GoRoute(
              path: '/',
              pageBuilder: (context, state) => buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: LandingScreen(analytics: analytics),
                  )),
        ],
        redirect: (context, state) async {
          if (state.uri.toString().contains('intros')) {
            return null;
          }
          if ((state.uri.toString().endsWith('profile') ||
                  state.uri.toString().contains('onboarding')) &&
              state.uri.toString() != '/onboarding/complete') {
            final currentUser = FirebaseAuth.instance.currentUser;
            final currentUserPhoneNumber = currentUser?.phoneNumber;
            final usersRef = FirebaseFirestore.instance.collection('users');
            final userDocRef = await usersRef
                .where('phoneNumber', isEqualTo: currentUserPhoneNumber)
                .get();
            if (currentUser != null) {
              // new user
              if (userDocRef.docs.isEmpty) {
                await usersRef.add({
                  'uid': currentUser.uid,
                  'phoneNumber': currentUser.phoneNumber,
                  'lastInteractionTimestamp': FieldValue.serverTimestamp(),
                  'onboardingComplete': false,
                  'onboardingReminderSent': false,
                });
                return '/onboarding/name';
              } else {
                // existing user, migrate then navigate to onboarding if incomplete
                final userDoc = userDocRef.docs.first;
                final userDocData = userDoc.data();
                await userDoc.reference.update({
                  'uid': currentUser.uid,
                  'lastInteractionTimestamp': FieldValue.serverTimestamp(),
                });
                if (userDocData['firstName'] == null ||
                    userDocData['lastName'] == null) {
                  return '/onboarding/name';
                } else if (userDocData['birthday'] == null ||
                    userDocData['location'] == null) {
                  return '/onboarding/birthday-location';
                } else if (userDocData['jobTitle'] == null ||
                    userDocData['company'] == null ||
                    userDocData['website'] == null) {
                  return '/onboarding/work';
                } else if (userDocData['goals'] == null) {
                  return '/onboarding/goals';
                } else if (userDocData['lookingFor'] == null) {
                  return '/onboarding/looking-for';
                } else if (userDocData['interests'] == null) {
                  return '/onboarding/interests';
                } else if (userDocData['twitterUrl'] == null ||
                    userDocData['instagramUrl'] == null ||
                    userDocData['linkedinUrl'] == null ||
                    userDocData['personalUrl'] == null) {
                  return '/onboarding/social';
                } else if (userDocData['photoUrl'] == null) {
                  return '/onboarding/photo';
                } else if (userDocData['referrer'] == null) {
                  return '/onboarding/referrer';
                } else if (userDocData['onboardingComplete'] == null ||
                    userDocData['onboardingComplete'] == false) {
                  return '/onboarding/complete';
                } else if (state.uri.toString().contains('intros')) {
                  return state.uri.toString();
                }
                return '/profile';
              }
            }
            return '/login';
          }
          return null;
        },
        errorBuilder: (context, state) => LandingScreen(
          analytics: analytics,
        ),
      ),
    );
  }
}
