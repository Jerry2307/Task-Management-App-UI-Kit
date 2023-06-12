import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class ScheduleWidget extends StatelessWidget {
  final String title;
  final Widget name;
  const ScheduleWidget({
    Key? key,
    required this.title,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.sp),
      child: Container(
        height: 72.sp,
        color: AppColors.kBottomNaV,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 11.sp,
              height: 72.sp,
              color: AppColors.kYellowApp,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: FontSizes.fontSize18,
                      color: AppColors.kWhite,
                    ),
                  ),
                  SizedBox(height: 5.sp),
                  Text(
                    '16:00 - 18:00',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: FontSizes.fontSize12,
                      color: AppColors.kTextFade1,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.centerRight,
                child: name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
