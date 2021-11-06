import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  final bottomNavBarIndex = 0.obs;

  void onItemTapped(int index) => bottomNavBarIndex.value = index;
}
