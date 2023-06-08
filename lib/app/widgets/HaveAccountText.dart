import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class HaveAccount extends StatelessWidget {
  final String text;
  final String lastText;
  final Function onTap;

  const HaveAccount({
    Key? key,
    required this.text,
    required this.lastText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w500,
              fontSize: FontSizes.fontSize14,
              color: AppColors.kGrey,
              letterSpacing: 0.5.sp,
            ),
          ),
          GestureDetector(
            onTap: () => onTap(),
            child: Text(
              lastText,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: FontSizes.fontSize14,
                color: AppColors.kYellowApp,
                letterSpacing: 0.5.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
