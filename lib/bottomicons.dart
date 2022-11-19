
import 'package:flutter/material.dart';

import 'cons.dart';

class BottomIcons extends StatelessWidget {
  const BottomIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Transform.scale(
                scaleX: -1,
                child: Icon(
                  Icons.reply_sharp,
                  size: 30,
                  color: Colors.black.withOpacity(0.2),
                )),
            const SizedBox(
              width: 5,
            ),
            Text(
              "1.7k",
              style: TextStyle(
                  fontFamily: font,
                  color: Colors.black.withOpacity(0.2)),
            ),
            const SizedBox(
              width: 15,
            ),
            Icon(
              Icons.comment_rounded,
              size: 30,
              color: Colors.black.withOpacity(0.2),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "325",
              style: TextStyle(
                  fontFamily: font,
                  color: Colors.black.withOpacity(0.2)),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              "2.3k",
              style: TextStyle(
                  fontFamily: font,
                  color: Colors.black.withOpacity(0.2)),
            ),
          ],
        ),
      ],
    );
  }
}