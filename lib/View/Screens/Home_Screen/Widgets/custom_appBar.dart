import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Logic/Controllers/main_controller.dart';
import '../../../../Utils/app_colors.dart';

final mainController = Get.find<MainController>();

PreferredSizeWidget CustomAppBar() {
  return PreferredSize(
    preferredSize: const Size.square(60),
    child: AppBar(
      backgroundColor: AppColors.APPBAR_COLOR,
      centerTitle: true,
      elevation: 1,
      title: Text(
        mainController.appBarTitle.value,
        style: const TextStyle(color: AppColors.BLACK_COLOR, fontSize: 17),
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
  );
}
