import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/views/beautify/beautify_controller.dart';
import 'package:myapp/views/beautify/result_page.dart';
import 'package:myapp/views/home/widgets/custom_card.dart';

class BeautifyPage extends GetView<BeautifyController> {
  final ImagePicker _picker = ImagePicker();

  BeautifyPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.only(left: 25.0),
        children: [
          GestureDetector(
            onTap: () => showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  children: [
                    ListTile(
                      title: const Text('Select from Camera'),
                      onTap: () async {
                        final _image = await _picker.pickImage(
                          source: ImageSource.camera,
                          maxHeight: 180,
                          maxWidth: 150,
                        );
                        controller.postImage(
                          'https://drive.google.com/uc?export=download&id=11fOo8O1Gly3fS6rBDrIrv6Y3KtYoJ4Ma',
                          _image!.path,
                          0,
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('Select from Gallery'),
                      onTap: () async {
                        final _image = await _picker.pickImage(
                          source: ImageSource.gallery,
                          maxHeight: 180,
                          maxWidth: 150,
                        );

                        controller.postImage(
                          'https://drive.google.com/uc?export=download&id=11fOo8O1Gly3fS6rBDrIrv6Y3KtYoJ4Ma',
                          _image!.path,
                          0,
                        );

                        Get.to(
                          () => ResultPage(
                            imagePath: _image.path,
                            styleImage:
                                'https://drive.google.com/uc?export=download&id=11fOo8O1Gly3fS6rBDrIrv6Y3KtYoJ4Ma',
                            type: 0,
                          ),
                        );
                      },
                    )
                  ],
                );
              },
            ),
            child: const CustomCard(
              imageURL:
                  'https://drive.google.com/uc?export=download&id=11fOo8O1Gly3fS6rBDrIrv6Y3KtYoJ4Ma',
            ),
          ),
          const CustomCard(
            imageURL:
                'https://drive.google.com/uc?export=download&id=1s5VbFFtWZhVCtrJNUnidDYwPQCT1EXRt',
          ),
          // CustomCard(
          //   imageURL:
          //       'https://cdn.shopify.com/s/files/1/0752/6435/products/4_8_2f85bf8d-257e-40b5-a177-285b34a698c2_765x.jpg?v=1624937793',
          // ),
          // CustomCard(
          //   imageURL:
          //       'https://cdn.shopify.com/s/files/1/0752/6435/products/4_8_2f85bf8d-257e-40b5-a177-285b34a698c2_765x.jpg?v=1624937793',
          // ),
          // CustomCard(
          //   imageURL:
          //       'https://cdn.shopify.com/s/files/1/0752/6435/products/4_8_2f85bf8d-257e-40b5-a177-285b34a698c2_765x.jpg?v=1624937793',
          // ),
          // CustomCard(
          //   imageURL:
          //       'https://cdn.shopify.com/s/files/1/0752/6435/products/4_8_2f85bf8d-257e-40b5-a177-285b34a698c2_765x.jpg?v=1624937793',
          // )
        ]);
  }
}
