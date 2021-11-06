import 'package:dio/dio.dart' as dio;
import 'package:myapp/env.dart';

class DioClient {
  final client = dio.Dio();

  Future<String> postImage(String style, String image, int type) async {
    final formData = dio.FormData.fromMap({
      'style': style,
      'img': image,
      'type': type,
    });
    final response = await client.post(baseUrl + 'api', data: formData);

    return response.data!;
  }
}
