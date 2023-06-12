import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/widgets/AddTeamMember.dart';
import 'package:taskmanagementapp/app/widgets/AppBarNoIconRight.dart';
import 'package:taskmanagementapp/app/widgets/Button.dart';
import 'package:taskmanagementapp/app/widgets/ButtonIconYellow.dart';
import 'package:taskmanagementapp/app/widgets/SeeAll.dart';
import 'package:taskmanagementapp/app/widgets/TaskBox.dart';
import 'package:taskmanagementapp/app/widgets/TimeDate.dart';
import 'controller.dart';

class CreateNewTaskPage extends GetView<CreateNewTaskController> {
  const CreateNewTaskPage({super.key});

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
              text: 'Create New Task',
              onTap: () {},
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SeeAll(
                  text: 'Task Title',
                  fw: FontWeight.w600,
                  size: FontSizes.fontSize20,
                  name: const SizedBox(),
                ),
                TaskBox(
                  height: 48.sp,
                  heightText: 0,
                  size: FontSizes.fontSize18,
                  text: 'Hi-Fi Wireframe',
                ),
                SeeAll(
                  text: 'Task Details',
                  fw: FontWeight.w600,
                  size: FontSizes.fontSize20,
                  name: const SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.sp),
                  child: TaskBox(
                    height: 82.sp,
                    heightText: 1.5,
                    size: FontSizes.fontSize11,
                    text:
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
                  ),
                ),
                SeeAll(
                  text: 'Add team members',
                  fw: FontWeight.w600,
                  size: FontSizes.fontSize20,
                  name: const SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.sp)
                      .copyWith(bottom: 0.sp),
                  child: Row(
                    children: [
                      const AddTeamMember(
                          path: 'assets/images/9.png', name: 'Robert'),
                      SizedBox(width: 7.sp),
                      const AddTeamMember(
                          path: 'assets/images/1.png', name: 'Sophia'),
                      SizedBox(width: 7.sp),
                      ButtonIconYellow(
                        path: AppIconsSvg.icAdd,
                        height: 41.sp,
                        width: 41.sp,
                      )
                    ],
                  ),
                ),
                SeeAll(
                  text: 'Time & Date',
                  fw: FontWeight.w600,
                  size: FontSizes.fontSize20,
                  name: const SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.sp),
                  child: Row(
                    children: [
                      ButtonIconYellow(
                        path: AppIconsSvg.icClock,
                        height: 41.sp,
                        width: 41.sp,
                      ),
                      const TimeDate(name: '10:30 AM'),
                      SizedBox(width: 7.sp),
                      ButtonIconYellow(
                        path: AppIconsSvg.icCalendar1,
                        height: 41.sp,
                        width: 41.sp,
                      ),
                      const TimeDate(name: '15/11/2022')
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25.sp),
                  child: Align(
                    child: Text(
                      'Add New',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: FontSizes.fontSize18,
                        color: AppColors.kWhite,
                      ),
                    ),
                  ),
                ),
                const ButtonCustom(text: 'Create'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
