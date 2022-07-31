import 'package:get/get.dart';
import 'package:zari_on_time/Logic/Controllers/offers_controller.dart';

class OffersBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OffersController());
  }
}
