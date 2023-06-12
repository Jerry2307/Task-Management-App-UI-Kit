import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class TimeDate extends StatelessWidget {
  final String name;

  const TimeDate({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 150.sp,
        height: 41.sp,
        color: AppColors.kGreyBlue,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Row(
            children: [
              Expanded(
                child: Align(
                  child: Text(
                    name,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: FontSizes.fontSize14,
                      color: AppColors.kWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
