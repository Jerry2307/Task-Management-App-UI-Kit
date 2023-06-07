import 'package:get/get.dart';
import 'controller.dart';

class NewMessageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewMessageController>(
      () => NewMessageController(),
    );
  }
}
