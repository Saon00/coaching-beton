import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveManager {
  static Future<void> init() async {
    await Hive.initFlutter();
  }
}
