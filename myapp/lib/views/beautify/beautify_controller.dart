import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:get/get.dart';
import 'package:myapp/network/cloundinary.dart';
import 'package:myapp/network/dio_client.dart';

class BeautifyController extends GetxController {
  final Cloudinary cloudinary = Get.find<Cloudinary>();
  final DioClient client = Get.find<DioClient>();

  RxBool apiResult = false.obs;

  void switchResult() {
    apiResult.value = !apiResult.value;
  }

  Future<void> postImage(String style, String image, int type) async {
    switchResult();
    String imageNetworkUrl = await cloudinary.uploadFileOnCloudinary(
      filePath: image,
      resourceType: CloudinaryResourceType.Image,
    );
    await client.postImage(style, imageNetworkUrl, type);
    switchResult();
  }
}
