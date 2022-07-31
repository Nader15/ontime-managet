import 'package:get/get.dart';
import 'package:zari_on_time/View/Screens/Home_Screen/home_screen.dart';
import 'package:zari_on_time/View/Screens/More_Screen/more_screen.dart';
import 'package:zari_on_time/View/Screens/Profile_Screen/profile_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;
  var appBarTitle = ''.obs;
  final tabs = [
    HomeScreen(),
    const ProfileScreen(),
    const MoreScreen(),
  ].obs;
}
