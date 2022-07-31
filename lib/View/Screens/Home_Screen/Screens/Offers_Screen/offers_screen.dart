import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Logic/Controllers/offers_controller.dart';
import 'package:zari_on_time/Utils/app_colors.dart';
import 'package:zari_on_time/View/Screens/Home_Screen/Screens/Offers_Screen/My_Offers_Screen/my_offers_screen.dart';
import 'package:zari_on_time/View/Screens/Home_Screen/Screens/Offers_Screen/Reserved_Screen/reserved_screen.dart';

import '../../Widgets/custom_appBar.dart';

class OffersScreen extends StatelessWidget {
  OffersScreen({Key? key}) : super(key: key);

  final offersController = Get.find<OffersController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                margin: const EdgeInsets.symmetric(horizontal: 27, vertical: 8),
                decoration: BoxDecoration(
                    color: const Color(0xff1F767680),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          offersController.reservedOption.value = true;
                          offersController.myOffersOption.value = false;
                        },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              offersController.reservedOption.value
                                  ? AppColors.MAIN_COLOR
                                  : Colors.transparent),
                          foregroundColor: MaterialStateProperty.all(
                            AppColors.BLACK_COLOR,
                          ),
                        ),
                        child: const Text("Reserved"),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          foregroundColor: MaterialStateProperty.all(
                            AppColors.BLACK_COLOR,
                          ),
                          backgroundColor: MaterialStateProperty.all(
                              offersController.myOffersOption.value
                                  ? AppColors.MAIN_COLOR
                                  : Colors.transparent),
                        ),
                        onPressed: () {
                          offersController.myOffersOption.value = true;
                          offersController.reservedOption.value = false;
                        },
                        child: const Text("My Offers"),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              if (offersController.reservedOption.value) const ReservedScreen(),
              if (offersController.myOffersOption.value) const MyOffersScreen(),
            ],
          ),
        ),
      );
    });
  }
}
