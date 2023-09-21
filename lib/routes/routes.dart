import 'package:get/get.dart';

import '../screen/tabbarscreen.dart';
import '../screen/views/login/loginscreen.dart';
import '../screen/views/login/registerscreen.dart';

class RouteManager {
  static const initial = '/';
  static const login = '/loginscreen';
  static const signin = '/Signinscreen';
  static const homescreen = '/homescreen';

  static String getInitialRoutes() => initial;
  static List<GetPage> route = [
    GetPage(name: login, page: () => const LoginScreen()),
    GetPage(name: signin, page: () => const RegisterScreen()),
    GetPage(name: homescreen, page: () => const TabbarScrren())
  ];
}
