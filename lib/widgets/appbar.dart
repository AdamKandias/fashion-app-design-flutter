import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: const Color.fromARGB(175, 51, 51, 51),
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.menu,
          size: 30.0,
        ),
      ),
      title: Image.asset(
        "assets/images/logo.png",
      ),
      centerTitle: true,
      actions: [
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_bag_outlined,
              size: 30.0,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
