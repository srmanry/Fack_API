import 'package:fack_api/services/splash_screen.dart';
import 'package:get/get.dart';

import '../screen/tabbarscreen.dart';
import '../screen/views/login/loginscreen.dart';
import '../screen/views/login/registerscreen.dart';

class RouteManager {
  static String initial = '/';
  static const splash = '/splashscreen';
  static const login = '/loginscreen';
  static const signin = '/Signinscreen';
  static const homescreen = '/homescreen';

  static String getInitialRoute() => initial;
  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const SplashScreen()),
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: signin, page: () => const RegisterScreen()),
    GetPage(name: homescreen, page: () => const TabbarScrren())
  ];
}
