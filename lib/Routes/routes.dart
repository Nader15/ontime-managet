import 'package:get/get.dart';
import 'package:zari_on_time/Logic/Bindings/main_binding.dart';
import 'package:zari_on_time/Logic/Bindings/offers_binding.dart';
import 'package:zari_on_time/View/Screens/AboutUs_Screen/aboutUs_screen.dart';
import 'package:zari_on_time/View/Screens/Forget_Password/Screens/confirm_code_screen.dart';
import 'package:zari_on_time/View/Screens/Forget_Password/Screens/reset_password_screen.dart';
import 'package:zari_on_time/View/Screens/Home_Screen/Screens/Booking_Screen/book_new_client.dart';
import 'package:zari_on_time/View/Screens/Home_Screen/Screens/Offers_Screen/offers_screen.dart';
import 'package:zari_on_time/View/Screens/Home_Screen/home_screen.dart';
import 'package:zari_on_time/View/Screens/Main_Screen/main_screen.dart';
import 'package:zari_on_time/View/Screens/Register_Screen/Screens/register_details_screen.dart';

import '../Logic/Bindings/features_binding.dart';
import '../Logic/Bindings/home_binding.dart';
import '../View/Screens/Features_Screen/features_screen.dart';
import '../View/Screens/Forget_Password/Screens/forget_password_screen.dart';
import '../View/Screens/Login_Screen/login_screen.dart';
import '../View/Screens/Register_Screen/Screens/register_screen.dart';
import '../View/Screens/Splash_Screen/splash_screen.dart';

class AppRoutes {
  //initialRoute
  static const splashScreen = Routes.splashScreen;
  static const loginScreen = Routes.loginScreen;
  static const authScreen = Routes.forgetPasswordScreen;
  static const confirmCodeScreen = Routes.confirmCodeScreen;
  static const resetPasswordScreen = Routes.resetPasswordScreen;
  static const registerScreen = Routes.registerScreen;
  static const registerDetailsScreen = Routes.registerDetailsScreen;
  static const featuresScreen = Routes.featuresScreen;
  static const mainScreen = Routes.mainScreen;
  static const homeScreen = Routes.homeScreen;
  static const bookNewClientScreen = Routes.bookNewClientScreen;
  static const offersScreen = Routes.offersScreen;
  static const aboutUsScreen = Routes.aboutUsScreen;

  //getPages
  static final routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.forgetPasswordScreen,
      page: () => ForgetPasswordScreen(),
    ),
    GetPage(
      name: Routes.confirmCodeScreen,
      page: () => ConfirmCodeScreen(),
    ),
    GetPage(
      name: Routes.resetPasswordScreen,
      page: () => ResetPasswordScreen(),
    ),
    GetPage(
      name: Routes.registerScreen,
      page: () => RegisterScreen(),
    ),
    GetPage(
      name: Routes.registerDetailsScreen,
      page: () => RegisterDetailsScreen(),
    ),
    GetPage(
        name: Routes.featuresScreen,
        page: () => FeaturesScreen(),
        bindings: [
          MainBinding(),
          HomeBinding(),
          FeaturesBinding(),
        ]),
    GetPage(
        name: Routes.homeScreen,
        page: () => HomeScreen(),
        binding: HomeBinding()),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      bindings: [
        HomeBinding(),
        OffersBinding(),
        MainBinding(),
      ],
    ),
    GetPage(
      name: Routes.bookNewClientScreen,
      page: () => BookNewClientScreen(),
    ),
    GetPage(
      name: Routes.offersScreen,
      page: () => OffersScreen(),
      binding: OffersBinding(),
    ),
    GetPage(
      name: Routes.aboutUsScreen,
      page: () => AboutUsScreen(),
      // binding: OffersBinding(),
    ),
  ];
}

class Routes {
  static const splashScreen = '/splashScreen';
  static const loginScreen = '/loginScreen';
  static const forgetPasswordScreen = '/forgetPasswordScreen';
  static const confirmCodeScreen = '/confirmCodeScreen';
  static const resetPasswordScreen = '/resetPasswordScreen';
  static const registerScreen = '/registerScreen';
  static const registerDetailsScreen = '/registerDetailsScreen';
  static const featuresScreen = '/featuresScreen';
  static const mainScreen = '/mainScreen';
  static const homeScreen = '/homeScreen';
  static const bookNewClientScreen = '/bookNewClientScreen';
  static const offersScreen = '/offersScreen';
  static const aboutUsScreen = '/aboutUsScreen';
}
