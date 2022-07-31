import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Routes/routes.dart';

import '../../../Utils/app_colors.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "More",
          style: TextStyle(color: AppColors.BLACK_COLOR, fontSize: 17),
        ),
        actions: [
          TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(
                  AppColors.GREY_SHADE_COLOR,
                ),
              ),
              onPressed: () {},
              child: const Icon(Icons.notification_important_outlined)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.language,
                color: AppColors.BLACK_COLOR,
              ),
              title: const Text(
                "App Language",
                style: TextStyle(color: AppColors.BLACK_COLOR),
              ),
              trailing: const Text(
                "English",
                style: TextStyle(color: AppColors.DARK_GREY_COLOR),
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.message_outlined,
                color: AppColors.BLACK_COLOR,
              ),
              title: const Text(
                "Contact us",
                style: TextStyle(color: AppColors.BLACK_COLOR),
              ),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.aboutUsScreen);
              },
              leading: const Icon(
                Icons.info_outline,
                color: AppColors.BLACK_COLOR,
              ),
              title: const Text(
                "About us",
                style: TextStyle(color: AppColors.BLACK_COLOR),
              ),
            ),
            const Divider(),
            ListTile(
              tileColor: AppColors.APPBAR_COLOR,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              leading: const Icon(
                Icons.logout,
                color: AppColors.RED_COLOR,
              ),
              title: const Text(
                "Log out",
                style: TextStyle(color: AppColors.RED_COLOR),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
