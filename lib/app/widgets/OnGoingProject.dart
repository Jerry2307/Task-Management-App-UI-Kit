import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/widgets/ThreeAvatars.dart';

import 'CircularPercentIndiCator.dart';

class OnGoingProject extends StatelessWidget {
  final String title;
  final String text;
  final double percent;
  final double radius;
  final String percentText;

  const OnGoingProject({
    Key? key,
    required this.title,
    required this.percent,
    required this.text,
    required this.percentText,
    required this.radius,
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
                              const ThreeAvatars(),
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
          CircularPercentIndicatorWidget(
            percent: percent,
            percentText: percentText,
            radius: radius,
            sizeText: FontSizes.fontSize16,
          ),
        ],
      ),
    );
  }
}
