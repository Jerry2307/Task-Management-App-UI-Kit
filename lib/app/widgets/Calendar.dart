import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class Calendar extends StatelessWidget {
  final String date;
  final String day;
  final Color backgroundColor;
  final Color textColor;
  const Calendar({
    Key? key,
    required this.date,
    required this.day,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.sp, right: 14),
      child: Row(
        children: [
          Container(
            width: 50.sp,
            height: 70.sp,
            color: backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  date,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    fontSize: FontSizes.fontSize19,
                    color: textColor,
                  ),
                ),
                SizedBox(width: 5.sp),
                Text(
                  day,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: FontSizes.fontSize13,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
