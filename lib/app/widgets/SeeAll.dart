import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';

class SeeAll extends StatelessWidget {
  final String text;
  final FontWeight fw;
  final double size;
  final Widget name;

  const SeeAll({
    Key? key,
    required this.text,
    required this.fw,
    required this.size,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.inter(
              fontWeight: fw,
              fontSize: size,
              color: AppColors.kWhite,
              letterSpacing: 0.5.sp,
            ),
          ),
          name
        ],
      ),
    );
  }
}
