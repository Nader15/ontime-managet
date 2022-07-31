import 'package:flutter/cupertino.dart';

class AppConstants {
  static const String apiUrl = "http://zariexpress.com/";
  static const String IMAGE_ICON = 'assets/icons/Image_icon.svg';
  static const String WHITE_LOGO = 'assets/images/on-time_white_logo.png';
  static const String DARK_LOGO = 'assets/images/on-time_dark_logo.png';
  static double mediaHeight(context) => MediaQuery.of(context).size.height;
  static double mediaWidth(context) => MediaQuery.of(context).size.width;
  static const double widgetsCurve = 5;
}
