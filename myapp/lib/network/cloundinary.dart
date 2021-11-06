import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/foundation.dart';

class Cloudinary {
  final cloudinary = CloudinaryPublic('dvkroz7wz', 'j0umrv85', cache: false);

  Future<String> uploadFileOnCloudinary(
      {String? filePath, CloudinaryResourceType? resourceType}) async {
    late CloudinaryResponse response;
    try {
      response = await cloudinary.uploadFile(
        CloudinaryFile.fromFile(filePath!, resourceType: resourceType!),
      );
    } on CloudinaryException catch (e, s) {
      debugPrint(e.message);
      print(e.request);
    }

    debugPrint('url: ${response.secureUrl}');
    return response.secureUrl;
  }
}
