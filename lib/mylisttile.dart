
import 'package:flutter/material.dart';

import 'cons.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/model1.jpeg")),
        ),
        // child: Image.asset("assets/images/model1.jpeg"),
      ),
      title: const Text(
        "Daisy",
        style: TextStyle(
            fontFamily: font, fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(
        "34 mins Ago",
        style: TextStyle(fontFamily: font, color: Colors.grey[600]),
      ),
      trailing: const Icon(
        Icons.more_vert,
        color: Colors.grey,
      ),
    );
  }
}