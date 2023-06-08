import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class CompletedTask extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color colorPercent;

  const CompletedTask({
    Key? key,
    required this.title,
    required this.colorPercent,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 13.sp, right: 7.sp),
      child: Row(
        children: [
          Container(
            width: 183.sp,
            height: 175.sp,
            decoration: BoxDecoration(
              color: backgroundColor,
            ),
            child: Padding(
              padding: EdgeInsets.all(10.sp),
              child: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'PilatExtended',
                        color: AppColors.kBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: FontSizes.fontSize21,
                        height: 1.sp),
                  ),
                  SizedBox(height: 18.sp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Team members',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: FontSizes.fontSize11,
                          color: AppColors.kBlack,
                        ),
                      ),
                      SizedBox(
                        width: 72.sp,
                        child: Stack(
                          children: [
                            Image.asset('assets/images/Ellipse 1.png'),
                            Positioned(
                              left: 14.sp,
                              child: Image.asset('assets/images/Ellipse 2.png'),
                            ),
                            Positioned(
                              left: 28.sp,
                              child: Image.asset('assets/images/Ellipse 3.png'),
                            ),
                            Positioned(
                              left: 40.sp,
                              child: Image.asset('assets/images/Ellipse 4.png'),
                            ),
                            Positioned(
                              left: 54.sp,
                              child: Image.asset('assets/images/Ellipse 5.png'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.sp, bottom: 5.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Completed',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: FontSizes.fontSize11,
                            color: AppColors.kBlack,
                            letterSpacing: 0.5.sp,
                          ),
                        ),
                        Text(
                          '100%',
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: FontSizes.fontSize11,
                            color: AppColors.kBlack,
                            letterSpacing: 0.5.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    child: Container(
                      height: 6.sp,
                      decoration: BoxDecoration(
                          color: colorPercent,
                          borderRadius: BorderRadius.circular(18.sp)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
