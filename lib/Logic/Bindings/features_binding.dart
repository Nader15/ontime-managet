import 'package:get/get.dart';
import 'package:zari_on_time/Logic/Controllers/features_controller.dart';

class FeaturesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FeaturesController());
  }
}
