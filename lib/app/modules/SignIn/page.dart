import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/app_images.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/routes/app_pages.dart';
import 'package:taskmanagementapp/app/widgets/Button.dart';
import 'package:taskmanagementapp/app/widgets/ButtonGoogle.dart';
import 'package:taskmanagementapp/app/widgets/HaveAccountText.dart';
import 'package:taskmanagementapp/app/widgets/OrContinue.dart';
import 'package:taskmanagementapp/app/widgets/TextBox.dart';
import 'package:taskmanagementapp/app/widgets/TextBoxPassword.dart';
import 'controller.dart';

class SignInPage extends GetView<SignInController> {
  const SignInPage({super.key});

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
                child: Padding(
                  padding: EdgeInsets.only(left: 25.sp, top: 25.sp),
                  child: Image.asset(
                    AppImages.imgLogo,
                    width: 139.sp,
                    height: 91.92.sp,
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 25.sp, vertical: 30.sp)
                        .copyWith(bottom: 15.sp),
                child: Text(
                  'Welcome Back!',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: FontSizes.fontSize23,
                    color: AppColors.kWhite,
                    letterSpacing: 0.5.sp,
                  ),
                ),
              ),
              const TextBoxCustom(
                  title: 'Email Address',
                  imagePath: AppIconsSvg.icUsertag,
                  text: 'fazzzil72@gmail.com'),
              const TextBoxPassword(
                  title: 'Password',
                  imagePath: AppIconsSvg.icLock1,
                  text: '........'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.sp),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: FontSizes.fontSize14,
                      color: AppColors.kGrey,
                      letterSpacing: 0.5.sp,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.Global);
                },
                child: const ButtonCustom(text: 'Log In'),
              ),
              const OrContinue(),
              const ButtonGoogle(text: 'Google'),
              HaveAccount(
                text: 'Don’t have an account?',
                lastText: ' Sign Up',
                onTap: () {
                  Get.toNamed(Routes.CreateAccount);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
