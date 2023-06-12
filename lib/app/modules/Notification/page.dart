import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/widgets/AppBar.dart';
import 'package:taskmanagementapp/app/widgets/Notification.dart';
import 'package:taskmanagementapp/app/widgets/SeeAll.dart';
import 'controller.dart';

class NotificationPage extends GetView<NotificationController> {
  const NotificationPage({super.key});

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
              path: AppIconsSvg.icEdit,
              text: 'Notifications',
              onTap: () {},
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 16.sp),
                  child: SeeAll(
                    text: 'New',
                    fw: FontWeight.w500,
                    size: FontSizes.fontSize21,
                    name: const SizedBox(),
                  ),
                ),
                const NotificationWidget(
                  path: 'assets/images/5.png',
                  name: 'Olivia Anna ',
                  datetime: '31 min',
                  text: 'left a comment in task',
                  text2: ' Mobile App Design Project',
                  text3: '',
                ),
                const NotificationWidget(
                  path: 'assets/images/8.png',
                  name: 'Robert Brown ',
                  datetime: '31 min',
                  text: 'left a comment in task',
                  text2: ' Mobile App Design Project',
                  text3: '',
                ),
                const NotificationWidget(
                  path: 'assets/images/7.png',
                  name: 'Sophia ',
                  datetime: '31 min',
                  text: 'left a comment in task',
                  text2: ' Mobile App Design Project',
                  text3: '',
                ),
                const NotificationWidget(
                  path: 'assets/images/6.png',
                  name: 'Anna ',
                  datetime: '31 min',
                  text: 'left a comment in task',
                  text2: ' Mobile App Design Project',
                  text3: '',
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 16.sp),
                  child: SeeAll(
                    text: 'Earlier',
                    fw: FontWeight.w500,
                    size: FontSizes.fontSize21,
                    name: const SizedBox(),
                  ),
                ),
                const NotificationWidget(
                  path: 'assets/images/8.png',
                  name: 'Robert Brown ',
                  datetime: '31 min',
                  text: 'left a comment in task',
                  text2: ' Mobile App Design Project',
                  text3: ' as in process',
                ),
                const NotificationWidget(
                  path: 'assets/images/7.png',
                  name: 'Sophia ',
                  datetime: '31 min',
                  text: 'left a comment in task',
                  text2: ' Mobile App Design Project',
                  text3: '',
                ),
                const NotificationWidget(
                  path: 'assets/images/6.png',
                  name: 'Anna ',
                  datetime: '31 min',
                  text: 'left a comment in task',
                  text2: ' Mobile App Design Project',
                  text3: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
