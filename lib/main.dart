import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:password_generator/Service/generatePassword.dart';
import 'package:password_generator/screen/card.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  CustomeCard _customeCard1 = CustomeCard();
  CustomeCard _customeCard2 = CustomeCard();
  bool lower = false, upper = false, special = false, number = false;
  CustomeCard _customeCard3 = CustomeCard();
  CustomeCard _customeCard4 = CustomeCard();
  var _lengh = 1.obs;
  String _pass = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff264653),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        _customeCard1.click();
                        if (_customeCard1.enabled.value) lower = true;
                        if (!_customeCard1.enabled.value) lower = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _customeCard1.enableClick.value),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          10.8),
                                  child: Image.asset(
                                    "asset/a.png",
                                    height: Get.height / 8.8,
                                    width: Get.width / 5,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: Get.width / 36),
                                  child: Text(
                                    "حروف کوچک",
                                    style: TextStyle(
                                        fontFamily: "yekan",
                                        color: Colors.white,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        _customeCard2.click();
                        if (_customeCard2.enabled.value) upper = true;
                        if (!_customeCard2.enabled.value) upper = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _customeCard2.enableClick.value),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          10.8),
                                  child: Image.asset(
                                    "asset/B.png",
                                    height: Get.height / 8.8,
                                    width: Get.width / 5,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: Get.width / 36),
                                  child: Text(
                                    "حروف بزرگ",
                                    style: TextStyle(
                                        fontFamily: "yekan",
                                        color: Colors.white,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ))
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 15, left: 15),
                width: Get.width,
                height: Get.height / 5.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff2a9d8f),
                ),
                child: Column(
                  children: [
                    Text(
                      "تعداد حروف رمز",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "yekan",
                          fontSize: 15),
                    ),
                    Obx(() => Text(_lengh.value.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "yekan",
                            fontSize: 20))),
                    Obx(
                      () => Slider(
                        value: _lengh.value.toDouble(),
                        activeColor: Color(0xffe76f51),
                        min: 1,
                        max: 20,
                        inactiveColor: Color(0xffe9c46a),
                        onChanged: (value) {
                          _lengh.value = value.toInt();
                        },
                      ),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.all(15),
              width: Get.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {
                        _customeCard3.click();
                        if (_customeCard3.enabled.value) number = true;
                        if (!_customeCard3.enabled.value) number = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _customeCard3.enableClick.value),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          10.8),
                                  child: Image.asset(
                                    "asset/123.png",
                                    height: Get.height / 8.8,
                                    width: Get.width / 5,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: Get.width / 36),
                                  child: Text(
                                    "اعداد",
                                    style: TextStyle(
                                        fontFamily: "yekan",
                                        color: Colors.white,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      )),
                  GestureDetector(
                      onTap: () {
                        _customeCard4.click();
                        if (_customeCard4.enabled.value) special = true;
                        if (!_customeCard4.enabled.value) special = false;
                      },
                      child: Obx(
                        () => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _customeCard4.enableClick.value),
                          child: Center(
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: MediaQuery.of(context).size.width /
                                          10.8),
                                  child: Image.asset(
                                    "asset/special.png",
                                    height: Get.height / 8.8,
                                    width: Get.width / 5,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: Get.width / 36),
                                  child: Text(
                                    "حروف خاص",
                                    style: TextStyle(
                                        fontFamily: "yekan",
                                        color: Colors.white,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          height: MediaQuery.of(context).size.height / 4,
                          width: MediaQuery.of(context).size.width / 2.5,
                        ),
                      ))
                ],
              ),
            ),
            Container(
              height: Get.height / 10,
              width: Get.width,
              child: FloatingActionButton(
                onPressed: () {
                  try {
                    _pass = generatePassword(
                        lower, upper, number, special, _lengh.toDouble());
                  } catch (e) {
                    _pass = "شما باید حداقل یکی از ویژگی ها را انتخاب کنید";
                  }
                  Get.defaultDialog(
                      titleStyle: TextStyle(fontFamily: "yekan"),
                      middleTextStyle: TextStyle(fontFamily: "yekan"),
                      title: "رمز ساخته شده",
                      middleText: _pass,
                      actions: [
                        IconButton(
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: _pass));
                              Get.back();
                              Get.snackbar("", "",
                                  backgroundColor: Colors.white,
                                  duration: Duration(seconds: 2),
                                  isDismissible: true,
                                  titleText: Text(
                                    _pass ==
                                            "شما باید حداقل یکی از ویژگی ها را انتخاب کنید"
                                        ? ""
                                        : "$_pass",
                                    textAlign: TextAlign.right,
                                  ),
                                  messageText: Text(
                                    _pass ==
                                            "شما باید حداقل یکی از ویژگی ها را انتخاب کنید"
                                        ? "شما باید حداقل یکی از ویژگی ها را انتخاب کنید"
                                        : "رمز ساخته شده کپی شد",
                                    textAlign: TextAlign.right,
                                  ),
                                  icon: Icon(Icons.copy),
                                  snackPosition: SnackPosition.BOTTOM);
                            },
                            icon: Icon(Icons.copy))
                      ]);
                },
                splashColor: Color(0xffe76f51),
                backgroundColor: Color(0xff2a9d8f),
                child: Text(
                  "ساخت رمز",
                  style: TextStyle(fontFamily: "yekan", fontSize: 30),
                ),
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Get.width / 6),
                      topRight: Radius.circular(Get.width / 6)),
                ),
              ),
            ),
          ],
        ));
  }
}
