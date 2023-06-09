import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';

class Dots extends StatelessWidget {
  const Dots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6.sp,
      height: 6.sp,
      decoration: BoxDecoration(
        color: AppColors.kYellowApp,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
