import 'package:fack_api/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 30),
      () {
        Get.toNamed(RouteManager.homescreen);
      },
    );
    return const Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.asset(
          //   "assets/images/barta.png",
          //   height: 150,
          //   width: 150,
          //   fit: BoxFit.cover,
          // ),
          SizedBox(
            height: 20,
          ),
          Text(
            "ঠাকুরগাঁও বার্তা",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
          )
        ],
      ),
    ));
  }
}
