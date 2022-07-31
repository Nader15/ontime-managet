import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:zari_on_time/Logic/Controllers/register_controller.dart';
import 'package:zari_on_time/Routes/routes.dart';
import 'package:zari_on_time/Utils/app_colors.dart';

import '../../../Utils/app_constants.dart';
import '../../Widgets/titled_textField.dart';

class LoginScreen extends StatelessWidget {
  final registercontroller = Get.put(RegisterController());
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Login",
          style: TextStyle(color: AppColors.BLACK_COLOR, fontSize: 17),
        ),
        actions: [
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(
                AppColors.GREY_SHADE_COLOR,
              ),
            ),
            onPressed: () {
              Get.toNamed(Routes.featuresScreen);
            },
            child: Text(
              "Skip",
              style: TextStyle(color: AppColors.GREY_SHADE_COLOR, fontSize: 14),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: LoadingOverlay(
          isLoading: registercontroller.isLoading.value,
          child: Column(
            children: [
              const SizedBox(height: 36),
              Center(
                child: Image.asset(
                  AppConstants.DARK_LOGO,
                  // fit: BoxFit.cover,
                  // width: 200,
                ),
              ),
              const SizedBox(height: 36),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TitledTextField(
                      title: "Phone number",
                      controller: phone,
                    ),
                    const SizedBox(height: 24),
                    TitledTextField(
                      title: "Password",
                      controller: password,
                      suffixIcon: IconButton(
                        splashRadius: 20,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.visibility_off_outlined,
                          color: AppColors.DARK_GREY_COLOR,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Radio(
                    //           value: '',
                    //           groupValue: '',
                    //           onChanged: (_) {

                    //           },
                    //         ),
                    //         const Text(
                    //           "Remember me",
                    //           style: TextStyle(
                    //               color: AppColors.DARK_GREY_COLOR, fontSize: 12),
                    //         )
                    //       ],
                    //     ),
                    //     TextButton(
                    //       onPressed: () {
                    //         Get.toNamed(Routes.forgetPasswordScreen);
                    //       },
                    //       child: const Text(
                    //         "Forgot Password?",
                    //         style: TextStyle(
                    //             color: AppColors.DARK_GREY_COLOR, fontSize: 12),
                    //       ),
                    //     )
                    //   ],
                    // ),
                    const SizedBox(height: 36),
                    SizedBox(
                      width: AppConstants.mediaWidth(context),
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
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
                          registercontroller.login_fun(
                              phone.text, password.text);
                        },
                        child: const Text("Login"),
                      ),
                    ),
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: AppColors.DARK_GREY_COLOR, fontSize: 12),
                        ),
                        const SizedBox(width: 10),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.registerScreen);
                          },
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              color: AppColors.MAIN_COLOR,
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
