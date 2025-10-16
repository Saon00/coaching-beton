import 'package:coaching_beton/features/onboarding/settings/onboarding_repository.dart';
import 'package:coaching_beton/features/onboarding/settings/onboarding_repository_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

final onboardingControllerProvider = Provider<OnboardingController>((ref) {
  final repo = ref.watch(onboardingRepoProvider);
  return OnboardingController(repo);
});

class OnboardingController {
  final OnboardingRepository _onboardingRepository;

  OnboardingController(this._onboardingRepository);

  final RxInt currentPageIndex = 0.obs;
  final pageController = PageController(keepPage: true, viewportFraction: 0.8);

  int get totalPages => 2;

  void onPageChanged(int i) {
    currentPageIndex.value = i;
  }

  void nextPage() {
    if (currentPageIndex.value < totalPages - 1) {
      // Fixed logic
      pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
    else{

    }
  }
}
