import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/routes/app_pages.dart';
import 'package:taskmanagementapp/app/widgets/AppBar.dart';
import 'package:taskmanagementapp/app/widgets/Calendar.dart';
import 'package:taskmanagementapp/app/widgets/OneAvatar.dart';
import 'package:taskmanagementapp/app/widgets/ScheduleTask.dart';
import 'package:taskmanagementapp/app/widgets/SeeAll.dart';
import 'package:taskmanagementapp/app/widgets/ThreeAvatars.dart';
import 'package:taskmanagementapp/app/widgets/TwoAvatars.dart';
import 'controller.dart';

class SchedulePage extends StatelessWidget {
  final scheduleController = Get.put(ScheduleController());
  SchedulePage({super.key});

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
            flexibleSpace: AppBarWidget(
              path: AppIconsSvg.icAddSquare1,
              text: 'Schedule',
              onTap: () {
                Get.toNamed(Routes.CreateNewTask);
              },
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SeeAll(
                  text: 'November',
                  fw: FontWeight.w600,
                  size: FontSizes.fontSize20,
                  name: const SizedBox(),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            scheduleController.selectedCalendarIndex.value = 0;
                          },
                          child: Calendar(
                            date: '1',
                            day: 'Mon',
                            backgroundColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    0
                                ? AppColors.kYellowApp
                                : AppColors.kBottomNaV,
                            textColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    0
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            scheduleController.selectedCalendarIndex.value = 1;
                          },
                          child: Calendar(
                            date: '2',
                            day: 'Tue',
                            backgroundColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    1
                                ? AppColors.kYellowApp
                                : AppColors.kBottomNaV,
                            textColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    1
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            scheduleController.selectedCalendarIndex.value = 2;
                          },
                          child: Calendar(
                            date: '3',
                            day: 'Wed',
                            backgroundColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    2
                                ? AppColors.kYellowApp
                                : AppColors.kBottomNaV,
                            textColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    2
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            scheduleController.selectedCalendarIndex.value = 3;
                          },
                          child: Calendar(
                            date: '4',
                            day: 'Thu',
                            backgroundColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    3
                                ? AppColors.kYellowApp
                                : AppColors.kBottomNaV,
                            textColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    3
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            scheduleController.selectedCalendarIndex.value = 4;
                          },
                          child: Calendar(
                            date: '5',
                            day: 'Fri',
                            backgroundColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    4
                                ? AppColors.kYellowApp
                                : AppColors.kBottomNaV,
                            textColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    4
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            scheduleController.selectedCalendarIndex.value = 5;
                          },
                          child: Calendar(
                            date: '6',
                            day: 'Sat',
                            backgroundColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    5
                                ? AppColors.kYellowApp
                                : AppColors.kBottomNaV,
                            textColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    5
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            scheduleController.selectedCalendarIndex.value = 6;
                          },
                          child: Calendar(
                            date: '7',
                            day: 'Sun',
                            backgroundColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    6
                                ? AppColors.kYellowApp
                                : AppColors.kBottomNaV,
                            textColor: scheduleController
                                        .selectedCalendarIndex.value ==
                                    6
                                ? AppColors.kBlack
                                : AppColors.kWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SeeAll(
                  text: 'Today’s Tasks',
                  fw: FontWeight.w600,
                  size: FontSizes.fontSize20,
                  name: const SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.sp),
                  child: Container(
                    height: 72,
                    color: AppColors.kYellowApp,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'User Interviews',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w500,
                                  fontSize: FontSizes.fontSize18,
                                  color: AppColors.kBlackFade,
                                ),
                              ),
                              SizedBox(height: 5.sp),
                              Text(
                                '16:00 - 18:00',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: FontSizes.fontSize12,
                                  color: AppColors.kBlackFade,
                                ),
                              )
                            ],
                          ),
                        ),
                        const ThreeAvatars()
                      ],
                    ),
                  ),
                ),
                const ScheduleWidget(
                  title: 'Wireframe',
                  name: ThreeAvatars(),
                ),
                const ScheduleWidget(
                  title: 'Icons',
                  name: OneAvatars(),
                ),
                const ScheduleWidget(
                  title: 'Mockups',
                  name: ThreeAvatars(),
                ),
                const ScheduleWidget(
                  title: 'Testing',
                  name: TwoAvatars(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
