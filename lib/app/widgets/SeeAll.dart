import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class SeeAll extends StatelessWidget {
  final String text;

  const SeeAll({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: FontSizes.fontSize20,
              color: AppColors.kWhite,
              letterSpacing: 0.5.sp,
            ),
          ),
          Text(
            'See all',
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.fontSize16,
              color: AppColors.kYellowApp,
              letterSpacing: 0.5.sp,
            ),
          ),
        ],
      ),
    );
  }
}
