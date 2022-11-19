import 'package:flutter/material.dart';

import 'detail_page.dart';

class ModelGrid extends StatelessWidget {
  final String image;
  final double height;
  final double width;

  // ignore: use_key_in_widget_constructors
  const ModelGrid({required this.height, required this.width, required this.image});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: image,//"assets/images/modelgrid1.jpeg",
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => Detail(
                        image: image, // "assets/images/modelgrid1.jpeg",
                      ))));
        },
        child: Container(
          width: width, //170,
          height: height, // 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image))),
        ),
      ),
    );
  }
}