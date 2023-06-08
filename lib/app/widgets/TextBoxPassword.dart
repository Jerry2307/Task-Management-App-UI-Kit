import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';

class TextBoxPassword extends StatefulWidget {
  final String imagePath;
  final String text;
  final String title;

  const TextBoxPassword({
    Key? key,
    required this.imagePath,
    required this.text,
    required this.title,
  }) : super(key: key);

  @override
  _TextBoxPasswordState createState() => _TextBoxPasswordState();
}

class _TextBoxPasswordState extends State<TextBoxPassword> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 25.sp).copyWith(bottom: 10.sp),
          child: Text(
            widget.title,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.fontSize16,
              color: AppColors.kGrey,
              letterSpacing: 0.5.sp,
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 25.sp).copyWith(bottom: 10.sp),
          child: Container(
            width: 376.sp,
            height: 50.sp,
            color: AppColors.kGreyBlue,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.sp),
              child: Row(
                children: [
                  SvgPicture.asset(widget.imagePath),
                  SizedBox(width: 25.sp),
                  Expanded(
                    child: TextField(
                      obscureText: obscureText,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: FontSizes.fontSize16,
                        color: AppColors.kWhite,
                        letterSpacing: 0.5.sp,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.text,
                        hintStyle: TextStyle(
                            color: AppColors.kWhite,
                            fontSize: FontSizes.fontSize34,
                            height: 0.5.sp),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: SvgPicture.asset(
                      obscureText ? AppIconsSvg.icEyeslash : AppIconsSvg.icEyes,
                      width: 24.sp,
                      height: 24.sp,
                      color: AppColors.kWhite.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
