import 'package:flutter/material.dart';
import 'package:myapp/views/home/widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          onTap: (index) => index,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beautify'),
          ],
        ),
        appBar: const CustomAppBar(),
      ),
    );
  }
}
