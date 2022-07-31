import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Routes/routes.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_constants.dart';
import '../../../Widgets/titled_textField.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: AppColors.BLACK_COLOR, fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 23, vertical: 44),
                child: Text(
                  textAlign: TextAlign.center,
                  "Enter your Phone number for the verfication process, we will send 4 digit code to your number.",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.DARK_GREY_COLOR,
                  ),
                ),
              ),
              const SizedBox(height: 45),
              TitledTextField(
                title: "Phone number",
              ),
              const SizedBox(height: 45),
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
                    Get.toNamed(Routes.confirmCodeScreen);
                  },
                  child: const Text("Send Code"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
