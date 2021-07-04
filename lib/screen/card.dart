import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomeCard {
  var enabled = false.obs;
  var enableClick = Color(0xffe9c46a).obs;
  void click() {
    bool check = false;
    if (enabled.value) {
      enableClick.value = Color(0xffe9c46a);
      check = true;
      enabled.value = false;
    }
    if (!enabled.value && check == false) {
      enableClick.value = Color(0xffe76f51);
      enabled.value = true;
    }
  }
}
