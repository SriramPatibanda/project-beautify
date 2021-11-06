import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
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
              ? const Text('loading')
              : Center(child: Image.network(baseUrl + 'result/')),
        ),
      ),
    );
  }
}
