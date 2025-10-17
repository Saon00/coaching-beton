// import 'package:coaching_beton/features/onboarding/settings/onboarding_repository.dart';
// import 'package:coaching_beton/features/onboarding/settings/onboarding_repository_provider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:get/get.dart';

// final onboardingControllerProvider = Provider<OnboardingController>((ref) {
//   final repo = ref.watch(onboardingRepoProvider);
//   return OnboardingController(repo);
// });

// class OnboardingController {
//   final OnboardingRepository _onboardingRepository;

//   OnboardingController(this._onboardingRepository);

//   final RxInt currentPageIndex = 0.obs;
//   final pageController = PageController(keepPage: true, viewportFraction: 0.8);

//   int get totalPages => 2;

//   void onPageChanged(int i) {
//     currentPageIndex.value = i;
//   }

//   void nextPage() {
//     if (currentPageIndex.value < totalPages - 1) {
//       // Fixed logic
//       pageController.nextPage(
//         duration: Duration(milliseconds: 300),
//         curve: Curves.easeIn,
//       );
//     }
//     else{

//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final onboardingController = Provider<OnboardingController>(
  (ref) => OnboardingController(ref),
);

class OnboardingController {
  final Ref ref;
  OnboardingController(this.ref);

  final isOnboardingComplete = StateProvider<bool>((ref) => false);
  final currentPageIndex = StateProvider<int>((ref) => 0);

  final pageController = Provider<PageController>(
    (ref) => PageController(keepPage: true, viewportFraction: 0.8),
  );
  int get totalPages => 2;

  void changePageIndex(WidgetRef ref, int index) {
    ref.read(currentPageIndex.notifier).state = index;
  }

  void makeOnboardingComplete(WidgetRef ref) {
    ref.read(isOnboardingComplete.notifier).state = true;
  }
}
