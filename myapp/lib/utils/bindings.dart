import 'package:get/get.dart';
import 'package:myapp/network/cloundinary.dart';
import 'package:myapp/network/dio_client.dart';
import 'package:myapp/views/beautify/beautify_controller.dart';
import 'package:myapp/views/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.put(DioClient());
    Get.put(Cloudinary());
    Get.put(BeautifyController());
  }
}
