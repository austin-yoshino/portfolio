import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/colors.dart';
import 'package:portfolio/joyn.dart';
import 'package:portfolio/landing_screen.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio/noa.dart';
import 'package:portfolio/phenom.dart';
import 'package:portfolio/resume.dart';

void main() async {
  usePathUrlStrategy();
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Austin Yoshino',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Source Code Pro',
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.darkGrey),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
              path: '/',
              pageBuilder: (context, state) => buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: const LandingScreen(),
                  )),
          GoRoute(
              path: '/joyn',
              pageBuilder: (context, state) => buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: const JoynScreen(),
                  )),
          GoRoute(
              path: '/phenom',
              pageBuilder: (context, state) => buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: const PhenomScreen(),
                  )),
          GoRoute(
              path: '/noa',
              pageBuilder: (context, state) => buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: const NoaScreen(),
                  )),
          GoRoute(
              path: '/resume',
              pageBuilder: (context, state) => buildPageWithDefaultTransition(
                    context: context,
                    state: state,
                    child: const ResumeScreen(),
                  )),
        ],
        errorBuilder: (context, state) => const LandingScreen(),
      ),
    );
  }
}
