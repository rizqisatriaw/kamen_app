import 'package:get/get.dart';

import '../controllers/kamen_list_controller.dart';

class KamenListBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(KamenListController());
  }
}
