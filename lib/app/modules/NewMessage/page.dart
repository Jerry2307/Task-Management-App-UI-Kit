import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'package:taskmanagementapp/app/core/values/app_icons_svg.dart';
import 'package:taskmanagementapp/app/core/values/font_sizes.dart';
import 'package:taskmanagementapp/app/widgets/AppBar.dart';
import 'package:taskmanagementapp/app/widgets/Contact.dart';
import 'controller.dart';

class NewMessagePage extends GetView<NewMessageController> {
  const NewMessagePage({super.key});

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
              path: AppIconsSvg.icSearchMess,
              text: 'New Messages',
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
                Row(
                  children: [
                    Container(
                      height: 40.sp,
                      width: 40.sp,
                      decoration: BoxDecoration(
                        color: AppColors.kYellowApp,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Align(
                        child: SvgPicture.asset(AppIconsSvg.icProfile2user),
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    Text(
                      'Create a group',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: FontSizes.fontSize14,
                        color: AppColors.kWhite,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 22.sp),
                const Contact(
                  path: 'assets/images/1.png',
                  name: 'Amelia',
                  alphabet: 'A',
                ),
                const Contact(
                  path: 'assets/images/2.png',
                  name: 'Alexander',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/3.png',
                  name: 'Avery',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/4.png',
                  name: 'Asher',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/5.png',
                  name: 'Berrett',
                  alphabet: 'B',
                ),
                const Contact(
                  path: 'assets/images/6.png',
                  name: 'Benjamin',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/7.png',
                  name: 'Brayden',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/8.png',
                  name: 'Berret',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/9.png',
                  name: 'Braxton',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/1.png',
                  name: 'Charlotte',
                  alphabet: 'C',
                ),
                const Contact(
                  path: 'assets/images/2.png',
                  name: 'Camelia',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/3.png',
                  name: 'Dmelia',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/4.png',
                  name: 'Emelia',
                  alphabet: '',
                ),
                const Contact(
                  path: 'assets/images/5.png',
                  name: 'Rmelia',
                  alphabet: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
