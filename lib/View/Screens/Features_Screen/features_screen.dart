import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Logic/Controllers/home_controller.dart';
import 'package:zari_on_time/Routes/routes.dart';

import '../../../Utils/app_alerts.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_constants.dart';
import '../../Widgets/custom_drawer.dart';
import 'Widgets/features_grid.dart';

class FeaturesScreen extends StatelessWidget {
  FeaturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: AppConstants.mediaWidth(context),
          height: 50,
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
              backgroundColor: MaterialStateProperty.all(
                AppColors.MAIN_COLOR,
              ),
              foregroundColor: MaterialStateProperty.all(
                AppColors.BLACK_COLOR,
              ),
            ),
            onPressed: () {
              Get.toNamed(Routes.mainScreen);
            },
            child: const Text("Start"),
          ),
        ),
      ),
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Welcome",
          style: TextStyle(color: AppColors.BLACK_COLOR, fontSize: 17),
        ),
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.notification_important_outlined,
            ),
          )
        ],
      ),
      body: WillPopScope(
        onWillPop: () => AppAlerts().onWillPop()!,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              children: [
                const Text(
                  "Welcome to Zari On Time",
                  style: TextStyle(color: AppColors.MAIN_COLOR, fontSize: 12),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Choose the feature you need",
                  style: TextStyle(color: AppColors.BLACK_COLOR, fontSize: 18),
                ),
                const SizedBox(height: 28),
                FeaturesGrid(),
                const SizedBox(height: 26),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
