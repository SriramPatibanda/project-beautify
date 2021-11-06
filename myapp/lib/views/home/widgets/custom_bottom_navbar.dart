import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/views/home/home_controller.dart';

class CustomBottomNavBar extends GetView<HomeController> {
  const CustomBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: controller.bottomNavBarIndex.value,
      onTap: controller.onItemTapped,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beautify'),
      ],
    );
  }
}
