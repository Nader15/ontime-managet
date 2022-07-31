import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get_connect/http/src/multipart/multipart_file.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get/instance_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

import 'package:zari_on_time/Models/core/api.dart';
import 'package:zari_on_time/Models/register.dart';
import 'package:zari_on_time/Routes/routes.dart';
import 'package:zari_on_time/Utils/app_alerts.dart';

class RegisterController extends GetxController {
  var isLoading = false.obs;

  var register = Register().obs;
  void regiter_fun(String phone, String password, String nameEn, String nameAr,
      String category_id, XFile image) async {
    isLoading.value = true;
    var network =
        await Api.register(phone, password, nameEn, nameAr, category_id, image);
    if (network.success != false) {
      register.value = network;
      final datacount = GetStorage();
      datacount.write("accessToken", register.value.accessToken);
      //  datacount.read("accessToken");
      // datacount.remove('count');
      print(register.value.accessToken);
      isLoading.value = false;
      Get.toNamed(Routes.featuresScreen);
    } else {
      Fluttertoast.showToast(msg: network.apiMsgAr ?? '');
      isLoading.value = false;
    }
  }

  login_fun(String phone, String password) async {
    print('user_name is :$phone,password is :$password');
    var network = await Api.login(phone, password);
    if (network.success != false) {
      print(network);
      isLoading = true.obs;
      register.value = network;
      final datacount = GetStorage();
      datacount.write("accessToken", register.value.accessToken);

      print(register.value.accessToken);
      isLoading = false.obs;
      Get.toNamed(Routes.featuresScreen);
    } else {
      Fluttertoast.showToast(msg: network.apiMsgAr ?? '');
      isLoading = false.obs;
    }
  }
}
