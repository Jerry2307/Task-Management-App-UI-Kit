import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class NotificationWidget extends StatelessWidget {
  final String name;
  final String text;
  final String text2;
  final String path;
  final String datetime;

  const NotificationWidget({
    Key? key,
    required this.path,
    required this.name,
    required this.datetime,
    required this.text,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(path),
          Padding(
            padding: EdgeInsets.only(right: 25.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: RichText(
                    text: TextSpan(
                      text: name,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: FontSizes.fontSize14,
                        color: AppColors.kWhite,
                      ),
                      /*defining default style is optional */
                      children: <TextSpan>[
                        TextSpan(
                          text: text,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: FontSizes.fontSize14,
                            color: AppColors.kGrey,
                          ),
                        ),
                        TextSpan(
                          text: text2,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: FontSizes.fontSize14,
                            color: AppColors.kYellowApp,
                          ),
                        ),
                      ],
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                datetime,
                style: GoogleFonts.inter(
                  fontSize: FontSizes.fontSize8,
                  color: AppColors.kWhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5.sp),
            ],
          )
        ],
      ),
    );
  }
}
