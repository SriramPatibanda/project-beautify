import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/views/home/home_controller.dart';
import 'package:myapp/views/home/widgets/custom_appbar.dart';
import 'package:myapp/views/home/widgets/custom_bottom_navbar.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Obx(
          () => const CustomBottomNavBar(),
        ),
        appBar: const CustomAppBar(),
        body: Obx(
            () => _widgetOptions.elementAt(controller.bottomNavBarIndex.value)),
      ),
    );
  }
}
