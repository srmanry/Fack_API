import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/stylescreen.dart';
import '../../tabbarscreen.dart';
import 'signin.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 150.h,
              ),
              SizedBox(
                height: 50.h,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Email",
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Password",
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  Get.to(const TabbarScrren());
                },
                child: Container(
                  height: 45.h,
                  width: 150.w,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        //color: Colors.red,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: bottomtextstyle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Forget password",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const SignInscreen());
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
