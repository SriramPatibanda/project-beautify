import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu_outlined,
        color: Colors.grey,
        size: 25.0,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actionsIconTheme: const IconThemeData(
        color: Colors.grey,
      ),
      actions: const [
        Icon(Icons.book),
        SizedBox(width: 15.0),
        Icon(Icons.notifications_none_outlined),
        SizedBox(width: 15.0),
        Icon(Icons.add_shopping_cart),
        SizedBox(width: 20.0),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
