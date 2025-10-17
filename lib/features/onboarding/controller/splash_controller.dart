import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final splashController = Provider<SplashController>(
  (ref) => SplashController(ref),
);

class SplashController {
  final Ref ref;
  SplashController(this.ref);

  Future<void> initApp(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    GoRouter.of(context).go('/onboarding1');
  }
}


