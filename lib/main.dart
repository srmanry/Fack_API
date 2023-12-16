import 'package:device_preview/device_preview.dart';
import 'package:fack_api/routes/app_routes.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_utils/src/platform/platform.dart';

import 'screen/tabbarscreen.dart';
import 'screen/views/homescree.dart';

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return const GetMaterialApp(
          // initialRoute: "/",

          // initialRoute: RouteManager.getInitialRoute(),
          //  theme: lightTheme,
          // theme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
          debugShowCheckedModeBanner: false,
          title: 'First Method',

          home: TabbarScrren(),

          //home: Homescreen(),
        );
      },
    );
  }
}
