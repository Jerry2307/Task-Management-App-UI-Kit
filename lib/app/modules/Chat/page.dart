import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/routes/app_pages.dart';
import 'package:taskmanagementapp/app/widgets/AppBar.dart';
import 'package:taskmanagementapp/app/widgets/Chat.dart';
import 'package:taskmanagementapp/app/widgets/Dots.dart';
import 'package:taskmanagementapp/app/widgets/Groups.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int currentIndex = 0;

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
            flexibleSpace: AppBarWidget(
              path: AppIconsSvg.icEdit,
              text: 'Messages',
              onTap: () {
                Get.toNamed(Routes.NewMessage);
              },
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.sp),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: currentIndex == 0
                            ? AppColors.kYellowApp
                            : AppColors.kBottomNaV,
                        foregroundColor: currentIndex == 0
                            ? AppColors.kBlackFade
                            : AppColors.kWhite,
                      ),
                      child: SizedBox(
                        height: 45.sp,
                        child: Align(
                          child: Text(
                            'Chat',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: FontSizes.fontSize13),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20.sp),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: currentIndex == 1
                            ? AppColors.kYellowApp
                            : AppColors.kBottomNaV,
                        foregroundColor: currentIndex == 1
                            ? AppColors.kBlackFade
                            : AppColors.kWhite,
                      ),
                      child: SizedBox(
                        height: 45.sp,
                        child: Align(
                          child: Text(
                            'Groups',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w500,
                                fontSize: FontSizes.fontSize13),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IndexedStack(
                index: currentIndex,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25.sp, vertical: 32.sp),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.Messages);
                            },
                            child: const Chats(
                              name: 'Oliva Anna',
                              path: 'assets/images/1.png',
                              datetime: '31 min',
                              fw: FontWeight.w600,
                              dots: Dots(),
                            ),
                          ),
                          const Chats(
                            name: 'Emma',
                            path: 'assets/images/2.png',
                            datetime: '43 min',
                            fw: FontWeight.w600,
                            dots: Dots(),
                          ),
                          const Chats(
                            name: 'Robert Brown',
                            path: 'assets/images/3.png',
                            datetime: '6 Nov',
                            fw: FontWeight.w400,
                            dots: SizedBox(),
                          ),
                          const Chats(
                            name: 'James',
                            path: 'assets/images/4.png',
                            datetime: '8 Dec',
                            fw: FontWeight.w400,
                            dots: SizedBox(),
                          ),
                          const Chats(
                            name: 'Sophia',
                            path: 'assets/images/5.png',
                            datetime: '27 Dec',
                            fw: FontWeight.w400,
                            dots: SizedBox(),
                          ),
                          const Chats(
                            name: 'Isabella',
                            path: 'assets/images/6.png',
                            datetime: '31 min',
                            fw: FontWeight.w600,
                            dots: Dots(),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              width: 160.sp,
                              height: 50.sp,
                              color: AppColors.kYellowApp,
                              child: Align(
                                child: Text(
                                  'Start chat',
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: FontSizes.fontSize16,
                                      color: AppColors.kBlack),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25.sp, vertical: 32.sp),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(Routes.Messages);
                            },
                            child: const Groups(
                              name: 'Android Developer',
                              path: 'assets/images/4.png',
                            ),
                          ),
                          const Groups(
                            name: 'IOS Developer',
                            path: 'assets/images/7.png',
                          ),
                          const Groups(
                            name: 'Web Developer',
                            path: 'assets/images/8.png',
                          ),
                          const Groups(
                            name: 'Back-End Developer',
                            path: 'assets/images/9.png',
                          ),
                          const Groups(
                            name: 'Front-End Developer',
                            path: 'assets/images/10.png',
                          ),
                          const Groups(
                            name: 'Android Developer',
                            path: 'assets/images/11.png',
                          ),
                          const Groups(
                            name: 'Personal Project',
                            path: 'assets/images/12.png',
                          ),
                          const Groups(
                            name: 'School System Project',
                            path: 'assets/images/13.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
