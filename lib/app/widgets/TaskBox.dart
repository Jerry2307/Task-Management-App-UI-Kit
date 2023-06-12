import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';

class TaskBox extends StatelessWidget {
  final String text;
  final double size;
  final double height;
  final double heightText;

  const TaskBox({
    super.key,
    required this.text,
    required this.size,
    required this.height,
    required this.heightText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.sp),
      child: Container(
        height: height,
        color: AppColors.kGreyBlue,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.sp),
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: size,
                color: AppColors.kWhite,
                height: heightText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
