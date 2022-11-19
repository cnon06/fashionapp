import 'package:flutter/material.dart';

import 'cons.dart';

class HorizontalListViewElements extends StatelessWidget {
  final String image;
  final String logo;

  const HorizontalListViewElements(
      {Key? key, required this.image, required this.logo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(blurRadius: 1, color: Colors.black, spreadRadius: 1)
                ],
              ),
              child:
                  CircleAvatar(radius: 40, foregroundImage: AssetImage(image)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child:
                  CircleAvatar(radius: 15, foregroundImage: AssetImage(logo)),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Text(
              "Follow",
              style: TextStyle(
                  fontFamily: font, fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
