import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Logic/Controllers/booking_controller.dart';
import 'package:zari_on_time/Routes/routes.dart';
import 'package:zari_on_time/Utils/app_colors.dart';
import 'package:zari_on_time/View/Screens/Home_Screen/Widgets/custom_appBar.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        backgroundColor: AppColors.WHITE_COLOR,
        appBar: CustomAppBar(),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.APPBAR_COLOR,
                      ),
                      child: Column(
                        children: [
                          const Text(
                            "Marwa Tawfik",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Brand:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.DARK_GREY_COLOR),
                                  ),
                                  Text(
                                    "Belladona Beauty Center",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Service:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.DARK_GREY_COLOR),
                                  ),
                                  Text(
                                    "Laser",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Book Date:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.DARK_GREY_COLOR),
                                  ),
                                  Text(
                                    "20 Jun 2022",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Branch:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.DARK_GREY_COLOR),
                                  ),
                                  Text(
                                    "Nasr City",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Waiting Customer",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.DARK_GREY_COLOR),
                                  ),
                                  Text(
                                    "850",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 20),
                                  Text(
                                    "Book Time:",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: AppColors.DARK_GREY_COLOR),
                                  ),
                                  Text(
                                    "8 : 18 PM",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          const Divider(),
                          const SizedBox(height: 16),
                          const Text(
                            "Your Ticket Number",
                            style: TextStyle(
                                fontSize: 14, color: AppColors.DARK_GREY_COLOR),
                          ),
                          const Text(
                            "HC 15",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                ),
                                elevation: MaterialStateProperty.all(0),
                                side: MaterialStateProperty.all(
                                  const BorderSide(
                                    color: AppColors.MAIN_COLOR,
                                  ),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.white,
                                ),
                                foregroundColor: MaterialStateProperty.all(
                                    AppColors.BLACK_COLOR)),
                            child: const Text("Skip"),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Get.toNamed(Routes.bookNewClientScreen);
                            },
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                ),
                                elevation: MaterialStateProperty.all(0),
                                side: MaterialStateProperty.all(
                                  const BorderSide(
                                    color: AppColors.MAIN_COLOR,
                                  ),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.MAIN_COLOR),
                                foregroundColor: MaterialStateProperty.all(
                                    AppColors.BLACK_COLOR)),
                            child: const Text("Book"),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                ),
                                elevation: MaterialStateProperty.all(0),
                                side: MaterialStateProperty.all(
                                  const BorderSide(
                                    color: AppColors.MAIN_COLOR,
                                  ),
                                ),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.white,
                                ),
                                foregroundColor: MaterialStateProperty.all(
                                    AppColors.BLACK_COLOR)),
                            child: const Text("Next"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
