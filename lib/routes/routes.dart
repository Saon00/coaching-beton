
import 'package:coaching_beton/features/splash/ui/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'SPLASH',
        builder: (context, state) => SplashScreen(),
      ),
    ],
  );
}
