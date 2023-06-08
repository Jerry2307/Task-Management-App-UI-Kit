import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class ButtonCustom extends StatelessWidget {
  final String text;

  const ButtonCustom({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 30.sp),
      width: 376.sp,
      height: 55.sp,
      color: AppColors.kYellowApp,
      child: Align(
        child: Text(
          text,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: FontSizes.fontSize16,
              color: AppColors.kBlack),
        ),
      ),
    );
  }
}
