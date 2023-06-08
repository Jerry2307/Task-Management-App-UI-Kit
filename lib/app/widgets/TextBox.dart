import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class TextBoxCustom extends StatelessWidget {
  final String imagePath;
  final String text;
  final String title;

  const TextBoxCustom({
    super.key,
    required this.imagePath,
    required this.text,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 25.sp).copyWith(bottom: 10.sp),
          child: Text(
            title,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.fontSize16,
              color: AppColors.kGrey,
              letterSpacing: 0.5.sp,
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 25.sp).copyWith(bottom: 10.sp),
          child: Container(
            width: 376.sp,
            height: 50.sp,
            color: AppColors.kGreyBlue,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Row(
                children: [
                  SvgPicture.asset(imagePath),
                  SizedBox(width: 25.sp),
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
            ),
          ),
        ),
      ],
    );
  }
}
