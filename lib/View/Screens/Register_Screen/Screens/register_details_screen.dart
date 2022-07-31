import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Routes/routes.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_constants.dart';
import '../../../Widgets/button_list_widget.dart';
import '../../../Widgets/titled_textField.dart';

class RegisterDetailsScreen extends StatelessWidget {
  const RegisterDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Details",
          style: TextStyle(color: AppColors.BLACK_COLOR, fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add Your Address",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 24),
              ButtonListWidget(
                title: "Country",
              ),
              ButtonListWidget(
                title: "City",
              ),
              ButtonListWidget(
                title: "Region",
              ),
              const SizedBox(height: 32),
              const Text(
                "Add Your Service",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TitledTextField(
                title: "Service (optional)",
              ),
              const SizedBox(height: 100),
              SizedBox(
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
                    Get.toNamed(Routes.featuresScreen);
                  },
                  child: const Text("Sign up"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
