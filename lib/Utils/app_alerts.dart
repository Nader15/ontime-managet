import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Utils/app_constants.dart';
import 'package:zari_on_time/Utils/app_strings.dart';

import '../../../../Utils/app_colors.dart';

class AppAlerts {
  showSnackBar(controller) {
    return controller.scaffoldKey.currentState!.showSnackBar(
      const SnackBar(
        backgroundColor: AppColors.MAIN_COLOR,
        content: Text(AppStrings.ENTER_LOCATION_DESTINATION),
        duration: Duration(seconds: 5),
      ),
    );
  }

  Future<bool>? onWillPop() async {
    final result = await Get.defaultDialog(
      title: '',
      content: Text(
        "هل تريد اغلاق التطبيق ؟",
        textAlign: TextAlign.center,
        style: const TextStyle(color: AppColors.BLACK_COLOR),
      ),
      confirm: RaisedButton(
        color: AppColors.GREY_SHADE_COLOR,
        textColor: AppColors.WHITE_COLOR,
        onPressed: () {
          SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text("ok".tr),
      ),
      cancel: RaisedButton(
        color: AppColors.MAIN_COLOR,
        textColor: AppColors.WHITE_COLOR,
        onPressed: () {
          Get.back();
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text("cancel".tr),
      ),
      confirmTextColor: AppColors.WHITE_COLOR,
    );
    if (result == null) {
      return false;
    } else {
      return result;
    }
  }

  Future<bool>? bookNewClientAlert(BuildContext context) async {
    final result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: AppColors.APPBAR_COLOR,
            content: Container(
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: AppConstants.mediaHeight(context) / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text("Marwa Tawfik"),
                  const SizedBox(height: 24),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Brand:",
                            style: TextStyle(
                                fontSize: 10, color: AppColors.DARK_GREY_COLOR),
                          ),
                          Text(
                            "Belladona Beauty Center",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Service:",
                            style: TextStyle(
                                fontSize: 10, color: AppColors.DARK_GREY_COLOR),
                          ),
                          Text(
                            "Laser",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Book Date:",
                            style: TextStyle(
                                fontSize: 10, color: AppColors.DARK_GREY_COLOR),
                          ),
                          Text(
                            "20 Jun 2022",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Branch:",
                            style: TextStyle(
                                fontSize: 10, color: AppColors.DARK_GREY_COLOR),
                          ),
                          Text(
                            "Nasr City",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Waiting Customer",
                            style: TextStyle(
                                fontSize: 10, color: AppColors.DARK_GREY_COLOR),
                          ),
                          Text(
                            "850",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Book Time:",
                            style: TextStyle(
                                fontSize: 10, color: AppColors.DARK_GREY_COLOR),
                          ),
                          Text(
                            "8 : 18 PM",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
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
                        fontSize: 10, color: AppColors.DARK_GREY_COLOR),
                  ),
                  const Text(
                    "HC 15",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ));
      },
    );
    if (result == null) {
      return false;
    } else {
      return result;
    }
  }
}
