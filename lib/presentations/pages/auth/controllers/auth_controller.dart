import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/helpers/debounce_helper.dart';
import '../../../../configs/routes/main_route.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  var isChecked = false.obs;
  var obscureText = true.obs;
  RxBool isAuthenticated = false.obs;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  DebounceHelper debounce = DebounceHelper(milliseconds: 300);
  final RxBool isRegisterButtonEnabled = RxBool(false);

  @override
  void onInit() async {
    super.onInit();
    // final savedCred = await LocalStorageService.getRememberMe();
    // usernameController.text = savedCred?['username'] ?? '';
    // passwordController.text = savedCred?['password'] ?? '';
  }

  /// Condition POST Login
  /// Checking saveCred() to show Username or Password which has been saved
  Future<void> postLogin() async {
    try {
      await saveCred();

      // final response = await LoginRepository.postLogin(
      //   usernameController.text,
      //   passwordController.text,
      // );
      // if (response?.statusCode == 200) {
      //   Get.offAndToNamed(MainRoute.home);
      // }
    } catch (e, s) {
      log('$e :: $s');
    }
  }

  /// Condition POST Register
  Future<void> postRegister() async {
    try {
      // final response = await RegisterRepository.postRegister(
      //   emailController.text,
      //   usernameController.text,
      //   passwordController.text,
      // );
      // if (response?.statusCode == 200) {
      //   Get.offAndToNamed(MainRoute.login);
      // }
    } catch (e, s) {
      log('$e :: $s');
    }
  }

  /// Condition to save data in RememberMe
  Future<void> saveCred() async {
    if (isChecked.value) {
      // await LocalStorageService.rememberMe(
      //   username: usernameController.text,
      //   password: passwordController.text,
      // );
    } else {
      // await LocalStorageService.deleteRememberMe();
    }
  }
}
