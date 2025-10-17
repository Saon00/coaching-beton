import 'package:coaching_beton/core/hive/hive_boxes.dart';
import 'package:coaching_beton/settings/app_settings.dart';
import 'package:hive_flutter/adapters.dart';

class AppSettingsRepositoryImp implements AppSettingsRepository {
  @override
  Future<bool> isOnboardingComplete() async {
    final box = await Hive.openBox(HiveBoxes.onboarding_complete);
    return box.get(HiveBoxes.onboarding_complete, defaultValue: true);
  }
}
