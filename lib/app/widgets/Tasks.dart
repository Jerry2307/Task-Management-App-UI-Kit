import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class Tasks extends StatelessWidget {
  final String text;
  final String path;

  const Tasks({
    Key? key,
    required this.text,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.sp),
      child: Container(
        height: 58.sp,
        color: AppColors.kGreyBlue,
        child: Padding(
          padding: EdgeInsets.only(left: 19.sp, right: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                child: Text(
                  text,
                  style: GoogleFonts.inter(
                    fontSize: FontSizes.fontSize18,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
              Container(
                width: 40.sp,
                height: 40.sp,
                color: AppColors.kYellowApp,
                child: Align(
                  child: SvgPicture.asset(path),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
