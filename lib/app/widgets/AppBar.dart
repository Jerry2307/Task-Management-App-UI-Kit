import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  final String path;

  const AppBarWidget({
    Key? key,
    required this.text,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 38.sp, horizontal: 40.sp)
          .copyWith(bottom: 0.sp),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    AppIconsSvg.icArrowLeft,
                  ),
                ),
              ),
              Align(
                child: Text(
                  text,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: FontSizes.fontSize18,
                    color: AppColors.kWhite,
                    letterSpacing: 0.5.sp,
                  ),
                ),
              ),
              Align(child: SvgPicture.asset(path)),
            ],
          ),
        ],
      ),
    );
  }
}
