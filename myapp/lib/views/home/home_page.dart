import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/views/beautify/beautify_page.dart';
import 'package:myapp/views/home/home_controller.dart';
import 'package:myapp/views/home/landing_page.dart';
import 'package:myapp/views/home/widgets/custom_appbar.dart';
import 'package:myapp/views/home/widgets/custom_bottom_navbar.dart';

class HomePage extends GetView<HomeController> {
  HomePage({Key? key}) : super(key: key);

  final List<Widget> _widgetOptions = <Widget>[
    const LandingPage(),
    BeautifyPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomBottomNavBar(),
        appBar: const CustomAppBar(),
        body: Obx(
            () => _widgetOptions.elementAt(controller.bottomNavBarIndex.value)),
      ),
    );
  }
}
