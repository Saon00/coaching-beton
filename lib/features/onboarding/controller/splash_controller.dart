import 'package:coaching_beton/features/onboarding/model/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final splashControllerProvider =
    StateNotifierProvider<SplashController, SplashState>(
      (ref) => SplashController(ref),
    );

class SplashController extends StateNotifier<SplashState> {
  final Ref ref;

  SplashController(this.ref) : super(SplashState());

  Future<void> startApp(BuildContext context) async {
    state = state.copyWith(isLoading: true);

    const totalSteps = 100;
    const delay = Duration(milliseconds: 30);

    for (int i = 1; i <= totalSteps; i++) {
      await Future.delayed(delay);
      state = state.copyWith(progress: i);
    }

    state = state.copyWith(isLoading: false);

    if (context.mounted) {
      // GoRouter.of(context).go('/onboarding1');
    }
  }
}
