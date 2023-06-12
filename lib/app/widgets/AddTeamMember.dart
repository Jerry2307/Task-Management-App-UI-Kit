import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class AddTeamMember extends StatelessWidget {
  final String path;
  final String name;

  const AddTeamMember({
    Key? key,
    required this.path,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 150.sp,
        height: 41.sp,
        color: AppColors.kGreyBlue,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp),
          child: Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  path,
                  width: 20,
                  height: 20,
                ),
              ),
              SizedBox(width: 5.sp),
              Expanded(
                child: Text(
                  name,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: FontSizes.fontSize14,
                    color: AppColors.kWhite,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(AppIconsSvg.icCloseSquare),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
