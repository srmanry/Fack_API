import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../widgets/stylescreen.dart';
import 'homepages/delayedpage.dart';
import 'homepages/product.dart';
import 'homepages/userscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: 80.h,
          ),
          Image.asset(
            "assets/images/logo.png",
            color: Colors.deepPurpleAccent,
            height: 100.h,
            // width: 150,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.h,
          ),
          InkWell(
            onTap: () {
              Get.to(
                UserScreen(),
              );
            },
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: const Text(
                      "GET",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "LEST USERS",
                    style: bodytextstyle,
                  ),
                ],
              ),
              height: 100,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          InkWell(
            onTap: () {
              Get.to(Produtscreen());
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: const Text(
                      "GET",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "RESOURCE",
                    style: bodytextstyle,
                  ),
                ],
              ),
              height: 100,
              width: double.maxFinite,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          InkWell(
            onTap: () {
              Get.to(const ServiceScreen());
            },
            child: Container(
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.purple[300],
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "GET",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "DELAYED",
                    style: bodytextstyle,
                  ),
                ],
              ),
              height: 100,
            ),
          ),
        ],
      ),
    ));
  }
}
