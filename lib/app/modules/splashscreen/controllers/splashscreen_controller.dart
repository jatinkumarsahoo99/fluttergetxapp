import 'dart:async';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashscreenController extends GetxController {
  //TODO: Implement SplashscreenController

  final count = 0.obs;
  @override
  void onInit() {
    callTimer();
    super.onInit();
  }

  void callTimer() {
    Timer(Duration(seconds: 5), navigateToWelcomeScreen);
  }



  void navigateToWelcomeScreen() async {
      Get.offAllNamed(Routes.WELCOMESCREEN);
    }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
