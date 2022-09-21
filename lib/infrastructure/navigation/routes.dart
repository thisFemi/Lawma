import 'package:get/get.dart';

import 'package:lawma/presentation/home/home.screen.dart';

import '../../presentation/screens.dart';
import 'bindings/controllers/controllers_bindings.dart';
import 'bindings/controllers/home.controller.binding.dart';

class AppRoutes {
  static String initialRoute = '/initialRoute';

  static List<GetPage> routes = [
    GetPage(
      name: HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
      binding: SplashControllerBinding(),
    ),
    GetPage(
      name: SIGNUP,
      page: () => SignupScreen(),
      binding: SignupControllerBinding(),
    ),
    GetPage(
      name: SIGNIN,
      page: () => const SigninScreen(),
      binding: SigninControllerBinding(),
    ),
    GetPage(
      name: HOME,
      page: () => TabScreen(),
      binding: TabControllerBinding(),
    ),
    GetPage(
      name: DISPOSEMENU,
      page: () => DisposeMenuScreen(),
      binding: TabControllerBinding(),
    ),
  ];
  static const DISPOSEMENU = '/disposemenu';
  static const HOME = '/home';
  static const SIGNIN = '/signin';
  static const SIGNUP = '/signup';
  static const TAB = '/tab';
}
