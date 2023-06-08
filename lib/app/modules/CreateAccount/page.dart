import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
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

class CreateAccountPage extends GetView<CreateAccountController> {
  const CreateAccountPage({super.key});

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
                  'Create your account!',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: FontSizes.fontSize23,
                    color: AppColors.kWhite,
                    letterSpacing: 0.5.sp,
                  ),
                ),
              ),
              const TextBoxCustom(
                  title: 'Full Name',
                  imagePath: AppIconsSvg.icUsertag,
                  text: 'Fazil Laghari'),
              const SizedBox(height: 5),
              const TextBoxCustom(
                  title: 'Email Address',
                  imagePath: AppIconsSvg.icUsertag,
                  text: 'fazzzil72@gmail.com'),
              const SizedBox(height: 5),
              const TextBoxPassword(
                  title: 'Password',
                  imagePath: AppIconsSvg.icLock1,
                  text: '........'),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.sp),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.sp),
                        child: SvgPicture.asset(AppIconsSvg.icTickSquare),
                      ),
                      SizedBox(width: 7.sp),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text: 'I have read & agreed to DayTask',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: FontSizes.fontSize11,
                              color: AppColors.kGrey,
                              letterSpacing: 0.5.sp,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Privacy Policy, Terms & Condition',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontSizes.fontSize11,
                                  color: AppColors.kYellowApp,
                                  letterSpacing: 0.5.sp,
                                ),
                              ),
                            ],
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.SignIn);
                },
                child: const ButtonCustom(text: 'Sign Up'),
              ),
              const OrContinue(),
              const ButtonGoogle(text: 'Google'),
              HaveAccount(
                text: 'Already have an account?',
                lastText: ' Log In',
                onTap: () {
                  Get.toNamed(Routes.SignIn);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
