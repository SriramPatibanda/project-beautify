import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/views/beautify/beautify_controller.dart';
import 'package:myapp/views/beautify/result_page.dart';
import 'package:myapp/views/home/widgets/custom_card.dart';

class CustomGridTile extends GetView<BeautifyController> {
  const CustomGridTile({
    Key? key,
    required this.picker,
    required this.styleLink,
    required this.patternType,
  }) : super(key: key);

  final ImagePicker picker;
  final String styleLink;
  final int patternType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            children: [
              ListTile(
                title: const Text('Select from Camera'),
                onTap: () async {
                  final _image = await picker.pickImage(
                    source: ImageSource.camera,
                    maxHeight: 180,
                    maxWidth: 150,
                  );
                  controller.postImage(
                    styleLink,
                    _image!.path,
                    0,
                  );
                  Get.to(
                    () => ResultPage(
                      imagePath: _image.path,
                      styleImage: styleLink,
                      type: patternType,
                    ),
                  );
                },
              ),
              ListTile(
                title: const Text('Select from Gallery'),
                onTap: () async {
                  final _image = await picker.pickImage(
                    source: ImageSource.gallery,
                    maxHeight: 180,
                    maxWidth: 150,
                  );

                  controller.postImage(
                    styleLink,
                    _image!.path,
                    patternType,
                  );

                  Get.to(
                    () => ResultPage(
                      imagePath: _image.path,
                      styleImage: styleLink,
                      type: 0,
                    ),
                  );
                },
              )
            ],
          );
        },
      ),
      child: CustomCard(
        imageURL: styleLink,
      ),
    );
  }
}
