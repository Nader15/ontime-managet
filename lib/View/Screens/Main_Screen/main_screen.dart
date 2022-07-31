import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Logic/Controllers/main_controller.dart';
import '../../../Utils/app_colors.dart';

class MainScreen extends StatelessWidget {
  final mainController = Get.find<MainController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: mainController.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.MAIN_COLOR,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: 'more'),
          ],
          onTap: (index) {
            mainController.currentIndex.value = index;
          },
        ),
        body: IndexedStack(
          index: mainController.currentIndex.value,
          children: mainController.tabs,
        ),
      );
    });
  }
}
