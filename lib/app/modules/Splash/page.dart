import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_images.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/routes/app_pages.dart';
import 'package:taskmanagementapp/app/widgets/Button.dart';
import 'controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBlackApp,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                padding: EdgeInsets.symmetric(horizontal: 25.sp)
                    .copyWith(top: 20.sp),
                child: Container(
                  width: 369.sp,
                  height: 300.sp,
                  color: AppColors.kWhite,
                  child: Align(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 5.sp, horizontal: 25.sp),
                      child: Image.asset(
                        'assets/images/pana.png',
                        width: 321.sp,
                        height: 300.sp,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.sp)
                    .copyWith(top: 20.sp),
                child: Text(
                  'Manage \nyour\nTask with',
                  style: TextStyle(
                      fontFamily: 'PilatExtended',
                      color: AppColors.kWhite,
                      fontWeight: FontWeight.w600,
                      fontSize: FontSizes.fontSize50,
                      height: 1.sp),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 25.sp,
                ),
                child: Text(
                  'DayTask',
                  style: TextStyle(
                      fontFamily: 'PilatExtended',
                      color: AppColors.kYellowApp,
                      fontWeight: FontWeight.w600,
                      fontSize: FontSizes.fontSize50,
                      height: 1.sp),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.SignIn);
                  },
                  child: const ButtonCustom(
                    text: 'Let\'s Start',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
