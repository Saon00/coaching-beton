import 'package:coaching_beton/core/global_widgets/bg_screen.dart';
import 'package:coaching_beton/core/theme/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theme/app_colors.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // ref.read(splashController);
        });
        return BGScreen(
          widget: Stack(
            children: [
              PageView(),
              onboardingPages(
                imgPath: AppImages.onBoarding_1,
                title: 'Track Every Batch in One Place',
                subTitle:
                    'Create batches, add students, and keep your tuition fully organized.',
              ),
            ],
          ),
        ); // Return a valid Widget here
      },
    );
  }
}

Widget onboardingPages({
  required String imgPath,
  required String title,
  required String subTitle,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // image
      Image.asset(imgPath),
      SizedBox(height: 20.h),
      // slogan
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Text(
          title.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.greyColor70,
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      SizedBox(height: 10.h),
      // sub slogan
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Text(
          subTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.greyColor70,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      SizedBox(height: 20.h),
    ],
  );
}

/*
   // button
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: SizedBox(
              width: double.infinity,
              height: 50.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: Text(
                  'NEXT >>',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
 */
