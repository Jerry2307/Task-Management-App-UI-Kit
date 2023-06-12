import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/modules/Chat/page.dart';
import 'package:taskmanagementapp/app/modules/CreateNewTask/page.dart';
import 'package:taskmanagementapp/app/modules/Home/page.dart';
import 'package:taskmanagementapp/app/modules/Notification/page.dart';
import 'package:taskmanagementapp/app/modules/Schedule/page.dart';
import 'package:taskmanagementapp/app/widgets/ButtonIconYellow.dart';

// ignore: must_be_immutable
class GlobalPage extends StatelessWidget {
  RxInt currentIndex = 0.obs;
  GlobalPage({super.key});

  final List<Widget> pages = [
    const HomePage(),
    const ChatPage(),
    const CreateNewTaskPage(),
    SchedulePage(),
    const NotificationPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: currentIndex.value,
          children: pages,
        ),
      ),
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 87.sp,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.kBottomNaV,
            elevation: 0.sp,
            currentIndex: currentIndex.value,
            onTap: (index) {
              currentIndex.value = index;
            },
            unselectedLabelStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.fontSize11,
            ),
            selectedLabelStyle: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: FontSizes.fontSize11,
            ),
            unselectedItemColor: AppColors.kTextLabel,
            selectedItemColor: AppColors.kYellowApp,
            items: [
              BottomNavigationBarItem(
                icon: Align(
                  child: SvgPicture.asset(
                    AppIconsSvg.icHome,
                    width: 24.sp,
                    height: 24.sp,
                    // ignore: deprecated_member_use
                    color:
                        currentIndex.value == 0 ? AppColors.kYellowApp : null,
                  ),
                ),
                label: 'Home',
                // Change the color as desired
              ),
              BottomNavigationBarItem(
                icon: Align(
                  child: SvgPicture.asset(
                    AppIconsSvg.icMessage,
                    width: 24.sp,
                    height: 24.sp,
                    // ignore: deprecated_member_use
                    color:
                        currentIndex.value == 1 ? AppColors.kYellowApp : null,
                  ),
                ),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                icon: ButtonIconYellow(
                  width: 54.sp,
                  height: 54.sp,
                  path: AppIconsSvg.icAdd,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Align(
                  child: SvgPicture.asset(
                    AppIconsSvg.icCalendar,
                    width: 24.sp,
                    height: 24.sp,
                    // ignore: deprecated_member_use
                    color:
                        currentIndex.value == 3 ? AppColors.kYellowApp : null,
                  ),
                ),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: Align(
                  child: SvgPicture.asset(
                    AppIconsSvg.icNotification,
                    width: 24.sp,
                    height: 24.sp,
                    // ignore: deprecated_member_use
                    color:
                        currentIndex.value == 4 ? AppColors.kYellowApp : null,
                  ),
                ),
                label: 'Notification',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
