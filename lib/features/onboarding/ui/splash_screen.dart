import 'package:coaching_beton/core/global_widgets/bg_screen.dart';
import 'package:coaching_beton/core/theme/app_colors.dart';
import 'package:coaching_beton/features/onboarding/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          ref.read(splashController).initApp(context);
        });

        return BGScreen(
          widget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // title
              Text(
                'COACHING ER BETON',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 50.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // subtitle
              Text(
                'Smart Tuition. Simple Tracking.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.greyColor70,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
