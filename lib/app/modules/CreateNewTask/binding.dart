import 'package:get/get.dart';
import 'controller.dart';

class CreateNewTaskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateNewTaskController>(
      () => CreateNewTaskController(),
    );
  }
}
