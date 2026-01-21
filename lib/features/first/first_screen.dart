import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../common_widget/custom_app_bar.dart';
import '../../constants/assets_path.dart';
import '../../routes/routes.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '1st Page'),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          //  spacing: 20.h,
          children: [
            GestureDetector(
              child: Image.asset(AssetsIcon.secondButtonIcon),
              onTap: () {
                context.push(AppRoutes.scmScreen);
           
              },
            ),
            SizedBox(height: 20.h),

            Image.asset(
              "assets/images/Group 1000011027.png",
              fit: BoxFit.fitWidth,
              width: 1.sw,
            ),
            SizedBox(height: 20.h),
            Image.asset(
              "assets/images/Component 2.png",
              fit: BoxFit.fitWidth,
              width: 1.sw,
            ),
            SizedBox(height: 20.h),

            Image.asset(
              "assets/images/Group 1000011009.png",
              fit: BoxFit.fitWidth,
              width: 1.sw,
            ),
            SizedBox(height: 20.h),

            Image.asset(
              "assets/images/Group 1000011070.png",
              fit: BoxFit.fitWidth,
              width: 1.sw,
            ),

            Image.asset(
              "assets/images/image.png",
              fit: BoxFit.fitWidth,
              width: 1.sw,
            ),

            Image.asset(
              "assets/images/image.png",
              fit: BoxFit.fitWidth,
              width: 1.sw,
            ),
          ],
        ),
      ),
    );
  }
}
