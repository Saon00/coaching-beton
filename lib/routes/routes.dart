import 'package:coaching_beton/features/onboarding/ui/onboarding_1.dart';
import 'package:go_router/go_router.dart';

import '../features/onboarding/ui/splash_screen.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'SPLASH',
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding1',
        name: 'ONBOARDING1',
        builder: (context, state) => Onboarding1(),
      ),
    ],
  );
}
