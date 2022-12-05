import 'package:get/get.dart';
import 'package:muchiri_s_application7/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:muchiri_s_application7/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:muchiri_s_application7/presentation/homepage2_screen/binding/homepage2_binding.dart';
import 'package:muchiri_s_application7/presentation/homepage2_screen/homepage2_screen.dart';
import 'package:muchiri_s_application7/presentation/login_screen/binding/login_binding.dart';
import 'package:muchiri_s_application7/presentation/login_screen/login_screen.dart';
import 'package:muchiri_s_application7/presentation/profile_screen/binding/dashboard_binding.dart';
import 'package:muchiri_s_application7/presentation/profile_screen/profile_screen.dart';
import 'package:muchiri_s_application7/presentation/registration_screen/binding/registration_binding.dart';
import 'package:muchiri_s_application7/presentation/registration_screen/registration_screen.dart';
import 'package:muchiri_s_application7/presentation/splash_screen/binding/splash_binding.dart';
import 'package:muchiri_s_application7/presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String registrationScreen = '/registration_screen';

  static String loginScreen = '/login_screen';

  static String dashboardScreen = '/dashboard_screen';

  static String dashboardOneScreen = '/dashboard_one_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
      ],
    ),
    GetPage(
      name: dashboardOneScreen,
      page: () => DashboardOneScreen(),
      bindings: [
        Homepage2Binding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
