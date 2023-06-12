import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/routes/app_pages.dart';
import 'package:taskmanagementapp/app/widgets/ButtonIconYellow.dart';
import 'package:taskmanagementapp/app/widgets/CompletedTask.dart';
import 'package:taskmanagementapp/app/widgets/OnGoingProject.dart';
import 'package:taskmanagementapp/app/widgets/SeeAll.dart';
import 'controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBlackApp,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(170.sp),
          child: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.sp,
              ).copyWith(top: 28.sp),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome Back!',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: FontSizes.fontSize11,
                              color: Colors.yellow,
                              letterSpacing: 0.5.sp,
                            ),
                          ),
                          Text(
                            'Fazil Laghari',
                            style: TextStyle(
                              fontFamily: 'PilatExtended',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: FontSizes.fontSize18,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.Profile);
                        },
                        child: Image.asset(
                          'assets/images/avatar.png',
                          width: 47.sp,
                          height: 48.sp,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30.sp),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 311.sp,
                          height: 58.sp,
                          color: AppColors.kGreyBlue,
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, right: 5),
                                child: SvgPicture.asset(
                                  AppIconsSvg.icSearch,
                                  width: 20.sp,
                                  height: 20.sp,
                                  // ignore: deprecated_member_use
                                  color: AppColors.kGreyFade,
                                ),
                              ),
                              SizedBox(width: 5.sp),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search tasks',
                                    hintStyle: GoogleFonts.inter(
                                      color: AppColors.kGreyFade,
                                      fontSize: FontSizes.fontSize16,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 16.sp),
                          child: ButtonIconYellow(
                            path: AppIconsSvg.icSetting,
                            width: 56.sp,
                            height: 56.sp,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp),
          child: ListView(
            children: [
              SeeAll(
                text: 'Completed Tasks',
                fw: FontWeight.w600,
                size: FontSizes.fontSize20,
                name: Text(
                  'See all',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: FontSizes.fontSize16,
                    color: AppColors.kYellowApp,
                    letterSpacing: 0.5.sp,
                  ),
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CompletedTask(
                      title: 'Real Estate \nWebsite \nDesign',
                      backgroundColor: AppColors.kYellowApp,
                      colorPercent: AppColors.kBlackFade,
                    ),
                    CompletedTask(
                      title: 'Finance\nMobile App\nDesign',
                      backgroundColor: AppColors.kGrey,
                      colorPercent: AppColors.kWhite,
                    ),
                    CompletedTask(
                      title: 'Wallet\nMobile App\nDesign',
                      backgroundColor: AppColors.kGrey,
                      colorPercent: AppColors.kBlackFade,
                    ),
                  ],
                ),
              ),
              const SizedBox(),
              SeeAll(
                text: 'Ongoing Projects',
                fw: FontWeight.w600,
                size: FontSizes.fontSize20,
                name: Text(
                  'See all',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: FontSizes.fontSize16,
                    color: AppColors.kYellowApp,
                    letterSpacing: 0.5.sp,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.TaskDetails);
                      },
                      child: OnGoingProject(
                        title: 'Mobile App Wireframe',
                        percent: 0.75,
                        text: '21 March',
                        percentText: '75%',
                        radius: 35.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.TaskDetails);
                      },
                      child: OnGoingProject(
                        title: 'Real Estate App Design',
                        percent: 0.60,
                        text: '20 June',
                        percentText: '60%',
                        radius: 35.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.TaskDetails);
                      },
                      child: OnGoingProject(
                        title: 'Dashboard & App Design',
                        percent: 0.75,
                        text: '21 March',
                        percentText: '75%',
                        radius: 35.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
