import 'package:flutter/material.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_constants.dart';
import '../../../Widgets/titled_textField.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Reset Password",
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
                  "Set your new password and login again so you can access your information.",
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.DARK_GREY_COLOR,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              TitledTextField(
                title: "New Password",
                suffixIcon: IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_off_outlined,
                    color: AppColors.DARK_GREY_COLOR,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TitledTextField(
                title: "Confirm Password",
                suffixIcon: IconButton(
                  splashRadius: 20,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.visibility_off_outlined,
                    color: AppColors.DARK_GREY_COLOR,
                  ),
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
                  onPressed: () {},
                  child: const Text("Update Password"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
