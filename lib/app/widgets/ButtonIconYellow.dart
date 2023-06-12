import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';

class ButtonIconYellow extends StatelessWidget {
  final String path;
  final double width;
  final double height;

  const ButtonIconYellow({
    Key? key,
    required this.path,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: AppColors.kYellowApp,
      child: Align(
        child: SvgPicture.asset(
          path,
          width: 24.sp,
          height: 24.sp,
          // ignore: deprecated_member_use
        ),
      ),
    );
  }
}
