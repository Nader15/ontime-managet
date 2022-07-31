import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:zari_on_time/Logic/Controllers/features_controller.dart';
import 'package:zari_on_time/Logic/Controllers/home_controller.dart';
import 'package:zari_on_time/Utils/app_colors.dart';

import '../../../../Logic/Controllers/main_controller.dart';

class CategoryModel {
  final String icon;
  final String title;
  final Function onPress;

  CategoryModel(this.icon, this.title, this.onPress);
}

// List<CategoryModel> categoryList = [
//   CategoryModel("assets/icons/booking_icon.png", "Booking", () {}),
//   CategoryModel("assets/icons/offer_icon.png", "Offers", () {
//     () {};
//   }),
//   CategoryModel("assets/icons/party_icon.png", "Have Fun", () {}),
//   CategoryModel("assets/icons/thinking_icon.png", "Where To Go", () {}),
//   CategoryModel("assets/icons/drive-thru_icon.png", "Drive Thru", () {}),
//   CategoryModel("assets/icons/schedule_icon.png", "Appointment", () {
//     () {};
//   }),
// ];

class FeaturesGrid extends StatelessWidget {
  FeaturesGrid({Key? key}) : super(key: key);
  final featureController = Get.find<FeaturesController>();
  final mainController = Get.find<MainController>();
  int number = 7;
  // List   categoryList = featureController.home.value.userAppServices!;
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool indexStatus =
          featureController.categorySelectedIndex.value == number;
      return GridView.builder(
        //  itemCount: 5,
        itemCount: featureController.isLoading.value == false
            ? featureController.home.value!.userAppServices!.length
            : 0,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 30,
          // mainAxisExtent: 80
        ),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () {
              number = index;
              featureController.categorySelectedIndex.value = index;
              mainController.appBarTitle.value = featureController
                      .home.value!.userAppServices![index].appServiceNameEn ??
                  '';
              featureController.changeSelectedIndex(index);
            },
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.APPBAR_COLOR,
                  border: Border.all(
                    color: number == index
                        ? AppColors.MAIN_COLOR
                        : AppColors.APPBAR_COLOR,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: IconButton(
                      splashRadius: 20,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info_outline,
                        color: AppColors.DARK_GREY_COLOR,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      featureController.home.value!.userAppServices![index]
                              .appServiceLogo ??
                          '',
                      fit: BoxFit.contain,
                      color: number == index
                          ? AppColors.MAIN_COLOR
                          : AppColors.BLACK_COLOR,
                      height: 70,
                      width: 70,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    flex: 1,
                    child: Text(
                      featureController.home.value!.userAppServices![index]
                              .appServiceNameEn ??
                          '',
                      style: TextStyle(
                        fontSize: 17,
                        color: number == index
                            ? AppColors.MAIN_COLOR
                            : AppColors.BLACK_COLOR,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
          //
        },
      );
    });
  }
}
