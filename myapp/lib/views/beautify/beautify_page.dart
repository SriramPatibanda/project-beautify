import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/views/beautify/beautify_controller.dart';
import 'package:myapp/views/beautify/custom_grid_tile.dart';
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
          CustomGridTile(
            picker: _picker,
            styleLink:
                'https://drive.google.com/uc?export=download&id=11fOo8O1Gly3fS6rBDrIrv6Y3KtYoJ4Ma',
            patternType: 0,
          ),
          CustomGridTile(
            picker: _picker,
            styleLink:
                'https://drive.google.com/uc?export=download&id=1s5VbFFtWZhVCtrJNUnidDYwPQCT1EXRt',
            patternType: 1,
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
