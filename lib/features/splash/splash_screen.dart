import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../constants/assets_path.dart';
import '../../constants/text_font_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2)).then((_) {
      if (!mounted) return;
      context.go('/signin');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0096FC),
      body: Stack(
        children: [
          // Top content
          Positioned(
            top: 100.h,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Image.asset(
                  AssetsIcon.logoIcon,
                  width: 96.w,
                  height: 98.h,
                  fit: BoxFit.contain,
                ),

                SizedBox(height: 16.h),

                Text("SCUBE", style: TextFontStyle.headLine24CWhiteW600),

                SizedBox(height: 6.h),

                Text(
                  "Control & Monitoring System",
                  style: TextFontStyle.headLine20CWhiteW600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
