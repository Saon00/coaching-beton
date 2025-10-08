import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';

final splashController = Provider<SplashController>(
  (ref) => SplashController(ref),
);

class SplashController {
  final Ref ref;

  SplashController(this.ref);

  Future<void> initApp(context) async {
    await Future.delayed(Duration(seconds: 2));

   GoRouter.of(context).go('/onboarding1');
  }
}
