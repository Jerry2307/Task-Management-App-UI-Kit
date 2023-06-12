import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class TextBoxProfile extends StatelessWidget {
  final String imagePath;
  final String text;
  final String imagePath1;

  const TextBoxProfile({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.imagePath1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp).copyWith(bottom: 20.sp),
      child: Container(
        width: 376.sp,
        height: 50.sp,
        color: AppColors.kGreyBlue,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(imagePath),
                  SizedBox(width: 10.sp),
                  Text(
                    text,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: FontSizes.fontSize15,
                      color: AppColors.kWhite,
                      letterSpacing: 0.5.sp,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(imagePath1),
            ],
          ),
        ),
      ),
    );
  }
}
