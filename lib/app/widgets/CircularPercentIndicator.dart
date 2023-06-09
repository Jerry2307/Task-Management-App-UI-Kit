import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircularPercentIndicatorWidget extends StatelessWidget {
  final double percent;
  final String percentText;
  final double radius;
  final double sizeText;

  const CircularPercentIndicatorWidget({
    Key? key,
    required this.percent,
    required this.percentText,
    required this.radius,
    required this.sizeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 16.sp,
      bottom: 12.sp,
      child: CircularPercentIndicator(
        reverse: true,
        radius: radius,
        lineWidth: 2.sp,
        percent: percent,
        backgroundColor: AppColors.kCircle,
        progressColor: AppColors.kYellowApp,
        center: Text(
          percentText,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w600,
            fontSize: sizeText,
            color: AppColors.kWhite,
          ),
        ),
      ),
    );
  }
}
