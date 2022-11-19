import 'package:flutter/material.dart';

import 'cons.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        'Fashion App',
        style: TextStyle(
            fontSize: 22,
            fontFamily: font,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.camera_alt),
          color: Colors.grey,
        ),
      ],
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
