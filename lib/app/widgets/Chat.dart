import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class Chats extends StatelessWidget {
  final String name;
  final String path;
  final String datetime;
  final FontWeight fw;
  final Widget dots;

  const Chats({
    Key? key,
    required this.path,
    required this.name,
    required this.datetime,
    required this.dots,
    required this.fw,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.sp),
      child: Row(
        children: [
          Image.asset(path),
          SizedBox(width: 10.sp),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 25.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      name,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: FontSizes.fontSize14,
                        color: AppColors.kWhite,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.sp),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Hi, please check the last task, that I....',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: FontSizes.fontSize13,
                        color: AppColors.kTextFade,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text(
                datetime,
                style: GoogleFonts.inter(
                  fontSize: FontSizes.fontSize8,
                  color: AppColors.kWhite,
                  fontWeight: fw,
                ),
              ),
              SizedBox(height: 5.sp),
              dots,
            ],
          )
        ],
      ),
    );
  }
}
