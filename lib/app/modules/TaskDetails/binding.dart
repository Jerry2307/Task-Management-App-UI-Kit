import 'package:get/get.dart';
import 'controller.dart';

class TaskDetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TaskDetailsController>(
      () => TaskDetailsController(),
    );
  }
}
