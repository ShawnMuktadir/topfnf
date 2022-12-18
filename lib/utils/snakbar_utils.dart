import 'package:flutter/material.dart';
import 'package:get/get.dart';

ConstantsUtils constants = ConstantsUtils();

const title = "Constants";

class ConstantsUtils {
  static final ConstantsUtils _constants = ConstantsUtils._i();

  factory ConstantsUtils() {
    return _constants;
  }

  ConstantsUtils._i();

  static bool isKeyboardOpened() {
    return MediaQuery.of(Get.context!).viewInsets.bottom != 0;
  }

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void dismissKeyboard(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }

  static void showSnackbar(String title, String msg) {
    Get.snackbar(title, msg, backgroundColor: Colors.black.withOpacity(0.3));
  }

  static void dismissSnakbar() {
    ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
  }
}
