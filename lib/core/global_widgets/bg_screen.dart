import 'package:coaching_beton/core/theme/app_images.dart';
import 'package:flutter/material.dart';

class BGScreen extends StatelessWidget {
  final Widget widget;

  const BGScreen({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.app_bg,
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          SafeArea(child: widget),
        ],
      ),
    );
  }
}
