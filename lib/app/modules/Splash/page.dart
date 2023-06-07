import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_images.dart';
import 'controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBlackApp,
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25.sp, top: 25.sp),
                child: Image.asset(
                  AppImages.imgLogo,
                  width: 93.sp,
                  height: 62.11.sp,
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 25.sp).copyWith(top: 37.sp),
              child: Container(
                width: 369.sp,
                height: 300.sp,
                color: AppColors.kWhite,
                child: Align(
                  child: Image.asset(
                    'assets/images/pana.png',
                    width: 321.sp,
                    height: 310.sp,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
