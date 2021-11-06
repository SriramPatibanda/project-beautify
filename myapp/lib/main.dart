import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/bindings.dart';
import 'package:myapp/views/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Myntra HackerRamp',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialBinding: HomeBinding(),
      home: HomePage(),
    );
  }
}
