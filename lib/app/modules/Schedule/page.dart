import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taskmanagementapp/app/core/theme/app_colors.dart';
import 'controller.dart';

class SchedulePage extends GetView<ScheduleController> {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlackApp,
    );
  }
}
