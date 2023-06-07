import 'package:get/get.dart';
import 'controller.dart';

class MessageGroupsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MessageGroupsController>(
      () => MessageGroupsController(),
    );
  }
}
