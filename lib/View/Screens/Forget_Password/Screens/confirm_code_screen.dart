import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Routes/routes.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_constants.dart';

class ConfirmCodeScreen extends StatelessWidget {
  const ConfirmCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Confirm Code",
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
                  "Enter 4 digit code that you received on your phone number.",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.DARK_GREY_COLOR,
                  ),
                ),
              ),
              Center(
                child: VerificationCode(
                  fullBorder: true,
                  textStyle: const TextStyle(
                    fontSize: 20.0,
                    color: AppColors.BLACK_COLOR,
                  ),
                  keyboardType: TextInputType.number,
                  underlineColor: AppColors.MAIN_COLOR,
                  // fillColor: AppColors.BLACK_COLOR,
                  // If this is null it will use primaryColor: Colors.red from Theme
                  length: 4,
                  cursorColor: AppColors.MAIN_COLOR,
                  // If this is null it will default to the ambient

                  onCompleted: (String value) {
                    // _code = value;
                  },
                  onEditing: (bool value) {
                    // _onEditing = value;
                    // if (!_onEditing) FocusScope.of(context).unfocus();
                  },
                ),
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
                    Get.toNamed(Routes.resetPasswordScreen);
                  },
                  child: const Text("Confirm"),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Resend",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        color: AppColors.BLACK_COLOR,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Text(
                    "(1:07 min)",
                    style: TextStyle(
                        fontSize: 12, color: AppColors.DARK_GREY_COLOR),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
