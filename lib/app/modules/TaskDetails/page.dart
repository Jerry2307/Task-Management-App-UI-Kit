import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/widgets/AppBar.dart';
import 'package:taskmanagementapp/app/widgets/CircularPercentIndiCator.dart';
import 'package:taskmanagementapp/app/widgets/DateTeam.dart';
import 'package:taskmanagementapp/app/widgets/SeeAll.dart';
import 'package:taskmanagementapp/app/widgets/Tasks.dart';
import 'package:taskmanagementapp/app/widgets/ThreeAvatars.dart';
import 'controller.dart';

class TaskDetailsPage extends GetView<TaskDetailsController> {
  const TaskDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBlackApp,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110.sp),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            flexibleSpace: const AppBarWidget(
              path: AppIconsSvg.icEdit,
              text: 'Task Details',
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.sp),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Text(
                      'Real Estate App Design',
                      style: TextStyle(
                        fontFamily: 'PilatExtended',
                        color: AppColors.kWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: FontSizes.fontSize20,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DateTeam(
                            title: 'Due Date',
                            name: Text(
                              '20 June',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: FontSizes.fontSize18,
                                color: AppColors.kWhite,
                              ),
                            ),
                            path: AppIconsSvg.icCalendarRemove),
                        DateTeam(
                            title: 'Project Team',
                            name: Padding(
                              padding: EdgeInsets.only(top: 5.sp),
                              child: const ThreeAvatars(),
                            ),
                            path: AppIconsSvg.icCalendarRemove),
                      ],
                    ),
                    SeeAll(
                      text: 'Project Details',
                      fw: FontWeight.w500,
                      size: FontSizes.fontSize18,
                      name: const SizedBox(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.sp),
                      child: Flexible(
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled',
                          style: GoogleFonts.inter(
                              color: AppColors.kText,
                              fontWeight: FontWeight.w400,
                              fontSize: FontSizes.fontSize12,
                              height: 1.2.sp),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SeeAll(
                          text: 'Project Progress',
                          fw: FontWeight.w500,
                          size: FontSizes.fontSize18,
                          name: const SizedBox(),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.sp),
                          child: CircularPercentIndicatorWidget(
                            percent: 0.6,
                            percentText: '60%',
                            radius: 30.sp,
                            sizeText: FontSizes.fontSize10,
                          ),
                        ),
                      ],
                    ),
                    SeeAll(
                      text: 'All Tasks',
                      fw: FontWeight.w500,
                      size: FontSizes.fontSize18,
                      name: const SizedBox(),
                    ),
                    SizedBox(height: 22.sp),
                    const Tasks(
                      text: 'User Interviews',
                      path: AppIconsSvg.icTickCircle,
                    ),
                    const Tasks(
                      text: 'Wireframes',
                      path: AppIconsSvg.icTickCircle,
                    ),
                    const Tasks(
                      text: 'Design System',
                      path: AppIconsSvg.icTickCircle,
                    ),
                    const Tasks(
                      text: 'Icons',
                      path: AppIconsSvg.icUnTickCircle,
                    ),
                    const Tasks(
                      text: 'Final Mockups',
                      path: AppIconsSvg.icUnTickCircle,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Material(
          color: AppColors.kBlackApp,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25.sp, horizontal: 45.sp),
              child: Container(
                height: 57.sp,
                color: AppColors.kYellowApp,
                child: Align(
                  child: Text(
                    'Add Task',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: FontSizes.fontSize16,
                      color: AppColors.kBlack,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
