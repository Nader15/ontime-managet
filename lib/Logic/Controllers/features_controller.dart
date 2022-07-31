import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:zari_on_time/Models/Home_Models/Home.dart';
import 'package:zari_on_time/Models/core/api.dart';
import 'package:zari_on_time/Routes/routes.dart';

class FeaturesController extends GetxController {
  var galleryList = [].obs;
  var isLoading = true.obs;
  Rx<Home?> home = Home().obs;
  RxBool indexStatus = false.obs;
  //  featureController.categorySelectedIndex.value == index;

  RxInt categorySelectedIndex = 6.obs;

  void changeSelectedIndex(int selectedIndex) {
    // print('selectedIndex 1 $selectedIndex');
    categorySelectedIndex.value = selectedIndex;
    //  print('categorySelectedIndex 2 ${categorySelectedIndex.value}');
    update();
  }

  @override
  void onInit() {
    super.onInit();
    home_fun();
    update();
  }

  void home_fun() async {
    isLoading.value = true;
    var network = await Api.home();
    print(home.value);
    if (network.success != false) {
      home.value = network;
      print(network.userAppServices!.length);
      isLoading.value = false;
      //  Get.toNamed(Routes.featuresScreen);
    } else {
      Fluttertoast.showToast(msg: network.apiMsgEn ?? '');
      isLoading.value = false;
    }
    update();
  }
}
