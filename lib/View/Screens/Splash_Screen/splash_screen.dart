import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zari_on_time/Logic/Controllers/register_controller.dart';

import '../../../Routes/routes.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashScreen> {
  final registercontroller = Get.put(RegisterController());
  late Timer timer;
  final datacount = GetStorage();
  void _goNext() {
    //  token = datacount.read("accessToken");
    if (datacount.read("accessToken") == null) {
      Get.offAllNamed(Routes.loginScreen);
    } else {
      Get.offAllNamed(Routes.featuresScreen);
    }
  }

  startDelay() {
    timer = Timer(const Duration(seconds: 3), _goNext);
  }

  @override
  void initState() {
    startDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BLACK_COLOR,
      body: Center(
        child: Image.asset(
          AppConstants.WHITE_LOGO,
          fit: BoxFit.cover,
          width: 200,
        ),
      ),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}
