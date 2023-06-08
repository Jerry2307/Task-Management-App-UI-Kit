import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:percent_indicator/percent_indicator.dart';

class OnGoingProject extends StatelessWidget {
  final String title;
  final String text;
  final double percent;
  final String percentText;

  const OnGoingProject({
    Key? key,
    required this.title,
    required this.percent,
    required this.text,
    required this.percentText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 13.sp, bottom: 10.sp),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 125.sp,
                  decoration: const BoxDecoration(
                    color: AppColors.kGreyBlue,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontFamily: 'PilatExtended',
                            color: AppColors.kWhite,
                            fontWeight: FontWeight.w600,
                            fontSize: FontSizes.fontSize17,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 7.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Team members',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontSizes.fontSize11,
                                  color: AppColors.kWhite,
                                ),
                              ),
                              SizedBox(height: 7.sp),
                              SizedBox(
                                width: 72.sp,
                                child: Stack(
                                  children: [
                                    Image.asset('assets/images/Ellipse 2.png'),
                                    Positioned(
                                      left: 14.sp,
                                      child: Image.asset(
                                          'assets/images/Ellipse 3.png'),
                                    ),
                                    Positioned(
                                      left: 28.sp,
                                      child: Image.asset(
                                          'assets/images/Ellipse 4.png'),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 13.sp),
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Due on : ',
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: FontSizes.fontSize11,
                                      color: AppColors.kWhite,
                                      letterSpacing: 0.5.sp,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: text,
                                        style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: FontSizes.fontSize11,
                                          color: AppColors.kWhite,
                                          letterSpacing: 0.5.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            right: 16.sp,
            bottom: 12.sp,
            child: CircularPercentIndicator(
              reverse: true,
              radius: 35.sp,
              lineWidth: 2.sp,
              percent: percent,
              backgroundColor: AppColors.kCircle,
              progressColor: AppColors.kYellowApp,
              center: Text(
                percentText,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: FontSizes.fontSize14,
                  color: AppColors.kWhite,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
