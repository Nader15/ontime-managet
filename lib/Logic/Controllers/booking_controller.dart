import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Models/Home_Models/Home.dart';
import 'package:zari_on_time/Models/Home_Models/current_booking.dart';
import 'package:zari_on_time/Models/core/api.dart';
import 'package:zari_on_time/Routes/routes.dart';

class BookingController extends GetxController {
  var isLoading = true.obs;
  Rx<CurrentBooking?> home = CurrentBooking().obs;
  @override
  void onInit() {
    super.onInit();
    current_booking_fun();
    update();
  }

  void current_booking_fun() async {
    isLoading.value = true;
    var network = await Api.current_booking();
    print(home.value);
    if (network.success != false) {
      home.value = network;

      isLoading.value = false;
      //  Get.toNamed(Routes.featuresScreen);
    } else {
      Fluttertoast.showToast(msg: network.apiMsgEn ?? '');
      isLoading.value = false;
    }
    update();
  }
}
