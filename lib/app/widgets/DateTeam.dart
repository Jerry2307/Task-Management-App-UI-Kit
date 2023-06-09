import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class DateTeam extends StatelessWidget {
  final String title;
  final Widget name;
  final String path;

  const DateTeam({
    Key? key,
    required this.title,
    required this.name,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 27.sp),
      child: Row(
        children: [
          Container(
            width: 47.sp,
            height: 47.sp,
            color: AppColors.kYellowApp,
            child: Align(
              child: SvgPicture.asset(
                path,
                width: 24.sp,
                height: 24.sp,
              ),
            ),
          ),
          SizedBox(width: 14.sp),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: FontSizes.fontSize12,
                  color: AppColors.kGrey,
                ),
              ),
              name
            ],
          ),
        ],
      ),
    );
  }
}
