import 'package:flutter/material.dart';
import 'package:password_generator/Service/generatePassword.dart';
import 'package:password_generator/screen/card.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  CustomeCard _customeCard1 = CustomeCard();
  CustomeCard _customeCard2 = CustomeCard();
  bool lower = false, upper = false, special = false, number = false;
  //bool
  // CustomeCard _customeCard3 = CustomeCard();
  // CustomeCard _customeCard4 = CustomeCard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0A0E20),
        appBar: AppBar(
          title: Text("Password Generator"),
        ),
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
          ],
        ));
  }
}
