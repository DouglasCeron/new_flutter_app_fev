

import 'package:get/get.dart';
import 'login_controller.dart';

class LoginBinding implements Bindings{
  @override
  void dependencies() {
    registerController();
  }

  registerController(){
    Get.lazyPut(() => LoginController());
  }
}