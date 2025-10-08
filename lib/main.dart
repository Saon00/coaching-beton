import 'package:coaching_beton/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
          routerDelegate: AppRoutes.router.routerDelegate,
          routeInformationParser: AppRoutes.router.routeInformationParser,
          routeInformationProvider: AppRoutes.router.routeInformationProvider,
        );
      },
    );
  }
}
