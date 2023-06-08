import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/modules/Chat/page.dart';
import 'package:taskmanagementapp/app/modules/CreateNewTask/page.dart';
import 'package:taskmanagementapp/app/modules/Home/page.dart';
import 'package:taskmanagementapp/app/modules/Notification/page.dart';
import 'package:taskmanagementapp/app/modules/Schedule/page.dart';

// ignore: must_be_immutable
class GlobalPage extends StatelessWidget {
  RxInt currentIndex = 0.obs;
  GlobalPage({super.key});

  final List<Widget> pages = [
    const HomePage(),
    const ChatPage(),
    const CreateNewTaskPage(),
    const SchedulePage(),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.kBottomNaV,
        currentIndex: currentIndex.value,
        onTap: (index) {
          currentIndex.value = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                      offset: Offset(0, 5),
                      blurRadius: 30,
                    )
                  ],
                ),
                child: SvgPicture.asset(
                  AppIconsSvg.icHome,
                  width: 44,
                  height: 44,
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 27),
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    offset: Offset(0, 5),
                    blurRadius: 30,
                  )
                ],
              ),
              child: SvgPicture.asset(
                AppIconsSvg.icMessage,
                width: 44,
                height: 44,
              ),
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 27),
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    offset: Offset(0, 5),
                    blurRadius: 30,
                  )
                ],
              ),
              child: SvgPicture.asset(
                AppIconsSvg.icAdd,
                width: 44,
                height: 44,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 27),
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    offset: Offset(0, 5),
                    blurRadius: 30,
                  )
                ],
              ),
              child: SvgPicture.asset(
                AppIconsSvg.icCalendar,
                width: 44,
                height: 44,
              ),
            ),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(right: 27),
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    offset: Offset(0, 5),
                    blurRadius: 30,
                  )
                ],
              ),
              child: SvgPicture.asset(
                AppIconsSvg.icNotification,
                width: 44,
                height: 44,
              ),
            ),
            label: 'Notification',
          ),
        ],
      ),
      // ...
    );
  }
}
