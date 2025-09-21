import 'package:coaching_beton/features/splash/ui/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRoutes{
  final GoRouter route = GoRouter(routes: [
    GoRoute(
      path: '/',
      name: 'SPLASH',
      builder: (context, state) => SplashScreen(),
    ),
  ]);
}