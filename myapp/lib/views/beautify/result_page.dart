import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:myapp/env.dart';
import 'package:myapp/views/beautify/beautify_controller.dart';

class ResultPage extends GetView<BeautifyController> {
  const ResultPage({
    Key? key,
    required this.imagePath,
    required this.type,
    required this.styleImage,
  }) : super(key: key);

  final String imagePath;
  final int type;
  final String styleImage;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => controller.apiResult.value
              ? Center(
                  child: SizedBox(
                    height: 650.0,
                    child: Lottie.asset(
                      'assets/makeup_animation.json',
                      fit: BoxFit.fill,
                      alignment: Alignment.center,
                    ),
                  ),
                )
              : Center(child: Image.network(baseUrl + 'result/')),
        ),
      ),
    );
  }
}
