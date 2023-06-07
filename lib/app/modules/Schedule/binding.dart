import 'package:get/get.dart';
import 'controller.dart';

class ScheduleBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScheduleController>(
      () => ScheduleController(),
    );
  }
}
