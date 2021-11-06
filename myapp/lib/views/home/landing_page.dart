import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/views/home/home_controller.dart';
import 'package:myapp/views/home/widgets/image_carousel.dart';

class LandingPage extends GetView<HomeController> {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          ImageCarousel(),
          SizedBox(height: 20.0),
          Text('Featured'),
        ],
      ),
    );
  }
}
