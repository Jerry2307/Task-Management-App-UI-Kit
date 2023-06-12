import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/widgets/AppBarNoIconRight.dart';
import 'package:taskmanagementapp/app/widgets/ButtonLogOut.dart';
import 'package:taskmanagementapp/app/widgets/TextBoxProfile.dart';
import 'controller.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBlackApp,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(65.sp),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            flexibleSpace: AppBarNoIconWidget(
              text: 'Profile',
              onTap: () {},
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25.sp),
                child: Align(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2.sp,
                            color: AppColors.kYellowApp,
                          ),
                          borderRadius: BorderRadius.circular(65),
                        ),
                        child: Image.asset(
                          'assets/images/AvatarProfile.png',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 33,
                          height: 33,
                          decoration: BoxDecoration(
                            color: AppColors.kBlackFade,
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: Align(
                              child:
                                  SvgPicture.asset(AppIconsSvg.icAddSquare1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const TextBoxProfile(
                imagePath: AppIconsSvg.icUserAdd,
                text: 'Fazil Laghari',
                imagePath1: AppIconsSvg.icEditFade,
              ),
              const TextBoxProfile(
                imagePath: AppIconsSvg.icUsertagFade,
                text: 'fazzzil72@gmail.com',
                imagePath1: AppIconsSvg.icEditFade,
              ),
              const TextBoxProfile(
                imagePath: AppIconsSvg.icLock,
                text: 'Password',
                imagePath1: AppIconsSvg.icEditFade,
              ),
              const TextBoxProfile(
                imagePath: AppIconsSvg.icTask,
                text: 'My Tasks',
                imagePath1: AppIconsSvg.icArrowDown,
              ),
              const TextBoxProfile(
                imagePath: AppIconsSvg.icSecuritycard,
                text: 'Privacy',
                imagePath1: AppIconsSvg.icArrowDown,
              ),
              const TextBoxProfile(
                imagePath: AppIconsSvg.icSetting2,
                text: 'Setting',
                imagePath1: AppIconsSvg.icArrowDown,
              ),
              const ButtonLogOut(
                text: 'Logout',
              )
            ],
          ),
        ),
      ),
    );
  }
}
