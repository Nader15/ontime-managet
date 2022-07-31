import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/View/Screens/Home_Screen/Screens/Offers_Screen/offers_screen.dart';

import '../../../../Logic/Controllers/main_controller.dart';
import '../Screens/Booking_Screen/booking_screen.dart';

class HomeWidget extends StatelessWidget {
  HomeWidget({Key? key}) : super(key: key);

  final mainController = Get.find<MainController>();

  @override
  Widget build(BuildContext context) {
    if (mainController.appBarTitle.value == "Booking") {
      return BookingScreen();
    }
    if (mainController.appBarTitle.value == "Offers") {
      return OffersScreen();
    }
    return const Center(
      child: Text("Coming soon ..."),
    );
  }
}
