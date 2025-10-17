import 'package:coaching_beton/features/onboarding/settings/onboarding_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onboardingRepoProvider = Provider<OnboardingRepository>(
  (ref) => OnboardingRepositoryImpl(),
);
