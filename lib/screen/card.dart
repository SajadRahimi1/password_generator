import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeCard {
  var enabled = false.obs;
  var enableClick = Color(0xff1D1E32).obs;
  void click() {
    bool check = false;
    if (enabled.value) {
      enableClick.value = Color(0xff1D1E32);
      check = true;
      enabled.value = false;
    }
    if (!enabled.value && check == false) {
      enableClick.value = Color(0xffe5c555);
      enabled.value = true;
    }
  }
}
