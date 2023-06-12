import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class MessagesWidget extends StatelessWidget {
  final String text;
  final String seen;
  final Color backgroundColor;
  final Color textColor;

  const MessagesWidget({
    Key? key,
    required this.text,
    required this.seen,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 250.sp,
          height: 47.sp,
          color: backgroundColor,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 12.sp, right: 25.sp),
              child: Text(
                text,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: FontSizes.fontSize16,
                  color: textColor,
                  letterSpacing: 0.5.sp,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 1.sp,
          right: 5.sp,
          child: Text(
            seen,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: FontSizes.fontSize8,
              color: AppColors.kBottomNaV,
              letterSpacing: 0.5.sp,
            ),
          ),
        ),
      ],
    );
  }
}
