import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class Contact extends StatelessWidget {
  final String name;
  final String path;
  final String alphabet;

  const Contact({
    Key? key,
    required this.path,
    required this.name,
    required this.alphabet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 22.sp,
      ),
      child: Row(
        children: [
          Image.asset(path),
          SizedBox(width: 10.sp),
          Text(
            name,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: FontSizes.fontSize14,
              color: AppColors.kWhite,
            ),
          ),
          SizedBox(height: 2.sp),
          const Spacer(),
          Text(
            alphabet,
            style: GoogleFonts.inter(
              fontSize: FontSizes.fontSize19,
              color: AppColors.kYellowApp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
