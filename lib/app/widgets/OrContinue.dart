import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class OrContinue extends StatelessWidget {
  const OrContinue({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: Divider(
              thickness: 1,
              color: AppColors.kGrey,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Text(
              'Or continue with',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: FontSizes.fontSize14,
                color: AppColors.kGrey,
                letterSpacing: 0.5.sp,
              ),
            ),
          ),
          const Expanded(
            child: Divider(
              thickness: 1,
              color: AppColors.kGrey,
            ),
          ),
        ],
      ),
    );
  }
}
