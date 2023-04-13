import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_app/screen/homescreen/view/home_screen.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(p0) => Home_Screen(),
    },

  ),);
}
