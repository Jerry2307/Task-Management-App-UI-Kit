import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/widgets/Messages.dart';
import 'controller.dart';

class MessagesPage extends GetView<MessagesController> {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBlackApp,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(85.sp),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(vertical: 38.sp, horizontal: 40.sp)
                  .copyWith(bottom: 0.sp, right: 15.sp),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgPicture.asset(
                          AppIconsSvg.icArrowLeft,
                        ),
                      ),
                      SizedBox(width: 10.sp),
                      Image.asset('assets/images/1.png'),
                      SizedBox(width: 10.sp),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Olivia Anna',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w500,
                              fontSize: FontSizes.fontSize18,
                              color: AppColors.kWhite,
                              letterSpacing: 0.5.sp,
                            ),
                          ),
                          SizedBox(height: 2.sp),
                          Text(
                            'Online',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: FontSizes.fontSize18,
                              color: AppColors.kTextFade,
                              letterSpacing: 0.5.sp,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SvgPicture.asset(AppIconsSvg.icVideo),
                      SizedBox(width: 15.sp),
                      SvgPicture.asset(AppIconsSvg.icCallCalling),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.sp),
                  child: const MessagesWidget(
                    backgroundColor: AppColors.kBottomNaV,
                    seen: '',
                    text: 'Hi, please check the new task.',
                    textColor: AppColors.kWhite,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.sp).copyWith(top: 0),
                  child: const Row(
                    children: [
                      Spacer(),
                      MessagesWidget(
                        backgroundColor: AppColors.kYellowApp,
                        seen: 'Seen',
                        text: 'Hi, please check the new task.',
                        textColor: AppColors.kBlackFade,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.sp)
                      .copyWith(bottom: 15.sp),
                  child: const MessagesWidget(
                    backgroundColor: AppColors.kBottomNaV,
                    seen: '',
                    text: 'Got it. Thanks.',
                    textColor: AppColors.kWhite,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 14.sp),
                  child: const MessagesWidget(
                    backgroundColor: AppColors.kBottomNaV,
                    seen: '',
                    text:
                        'Hi, please check the last task, that I have completed.',
                    textColor: AppColors.kWhite,
                  ),
                ),
                Image.asset('assets/images/crypto.png'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.sp),
                  child: const Row(
                    children: [
                      Spacer(),
                      MessagesWidget(
                        backgroundColor: AppColors.kYellowApp,
                        seen: 'Seen',
                        text: 'Got it. Will check it soon.',
                        textColor: AppColors.kBlackFade,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Material(
          color: AppColors.kBlackApp,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 20.sp),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 320.sp,
                    height: 57.sp,
                    color: AppColors.kBottomNaV,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(AppIconsSvg.icElementequal),
                          SizedBox(width: 5.sp),
                          Expanded(
                            child: TextField(
                              decoration: const InputDecoration(
                                hintText: 'Type a message',
                                hintStyle: TextStyle(color: AppColors.kGrey),
                              ),
                              onTap: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                              },
                            ),
                          ),
                          SvgPicture.asset(AppIconsSvg.icSend),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.sp),
                Container(
                  width: 57.sp,
                  height: 57.sp,
                  color: AppColors.kBottomNaV,
                  child: Align(child: SvgPicture.asset(AppIconsSvg.icVoice)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
