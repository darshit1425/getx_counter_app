import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_counter_app/screen/homescreen/controller/home_controller.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 2.0),
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.black,
              centerTitle: true,
              leading: Icon(Icons.search),
              actions: [Icon(Icons.settings)],
              title: const Text(
                "Counter",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${homeController.i}",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 140,
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  homeController.i.value = homeController.i.value * 0;
                },
                child: Icon(
                  Icons.refresh,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(26),
          child: Row(
            children: [
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  homeController.i++;
                  Get.snackbar("massage", "${homeController.i}",
                      backgroundColor: Colors.white,
                      colorText: Colors.black,
                      duration: Duration(seconds: 1));
                },
                child: Icon(Icons.add, color: Colors.black),
              ),
              SizedBox(
                width: 7,
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  homeController.i--;
                  Get.snackbar("massage", "${homeController.i}",
                      backgroundColor: Colors.white,
                      colorText: Colors.black,
                      duration: Duration(seconds: 1));
                },
                child: Icon(
                  Icons.minimize_rounded,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  homeController.i.value = homeController.i.value * 2;
                  Get.snackbar("massage", "${homeController.i}",
                      backgroundColor: Colors.white,
                      colorText: Colors.black,
                      duration: Duration(seconds: 1));
                },
                child: Text(
                  "2*",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 7,
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  homeController.i.value = homeController.i.value * 3;
                  Get.snackbar(
                    "massage",
                    "${homeController.i}",
                    backgroundColor: Colors.white,
                    colorText: Colors.black,
                    duration: Duration(seconds: 1),
                  );
                },
                child: Text(
                  "3*",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 7,
              ),
              FloatingActionButton(
                backgroundColor: Colors.white,
                onPressed: () {
                  homeController.i.value = homeController.i.value * 4;

                  Get.snackbar(
                    "massage",
                    "${homeController.i}",
                    backgroundColor: Colors.white,
                    colorText: Colors.black,
                    duration: Duration(seconds: 1),
                  );
                },
                child: Text(
                  "4*",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
