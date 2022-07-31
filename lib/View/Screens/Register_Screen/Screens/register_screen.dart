import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:zari_on_time/Logic/Controllers/register_controller.dart';
import 'package:zari_on_time/Routes/routes.dart';
import 'package:zari_on_time/View/Screens/Register_Screen/Widgets/upload_image_widget.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_constants.dart';
import '../../../Widgets/titled_textField.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final registercontroller = Get.put(RegisterController());

  GlobalKey<FormState> formKey = GlobalKey();
  XFile? UploadImage;
  setimage(XFile? UploadImage2) {
    UploadImage = UploadImage2;
    print('UploadImage!.path${UploadImage!.path}');
    return UploadImage;
  }

  TextEditingController nameAr = TextEditingController();
  TextEditingController nameEn = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController category_id = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: AppColors.APPBAR_COLOR,
        centerTitle: true,
        elevation: 1,
        title: const Text(
          "Sign up",
          style: TextStyle(color: AppColors.BLACK_COLOR, fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: Column(
              children: [
                TitledTextField(title: "Name (Arabic)", controller: nameAr),
                const SizedBox(height: 24),
                TitledTextField(title: "Name (English)", controller: nameEn),
                const SizedBox(height: 24),
                TitledTextField(title: "Phone Number", controller: phone),
                const SizedBox(height: 24),
                TitledTextField(title: "Category", controller: category_id),
                const SizedBox(height: 24),
                UploadImageWidget(setimage),
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
                const SizedBox(height: 24),
                TitledTextField(
                  title: "Confirm Password",
                  controller: confirmPassword,
                  suffixIcon: IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.visibility_off_outlined,
                      color: AppColors.DARK_GREY_COLOR,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
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
                      if (formKey.currentState!.validate()) {}
                      registercontroller.regiter_fun(
                          phone.text,
                          password.text,
                          nameEn.text,
                          nameAr.text,
                          category_id.text,
                          UploadImage ?? new XFile(''));
                      //  Get.toNamed(Routes.registerDetailsScreen);
                    },
                    child: const Text("Sign up"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
