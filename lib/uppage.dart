import 'package:flutter/material.dart';

import 'horizontallistviewelements.dart';

class UpPage extends StatelessWidget {
  const UpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: ListView(
        padding: const EdgeInsets.all(10),
        scrollDirection: Axis.horizontal,
        children: const [
          HorizontalListViewElements(
              image: "assets/images/model1.jpeg",
              logo: "assets/images/chanellogo.jpg"),
          SizedBox(
            width: 20,
          ),
          HorizontalListViewElements(
              image: "assets/images/model2.jpeg",
              logo: "assets/images/chloelogo.png"),
          SizedBox(
            width: 20,
          ),
          HorizontalListViewElements(
              image: "assets/images/model3.jpeg",
              logo: "assets/images/louisvuitton.jpg"),
          SizedBox(
            width: 20,
          ),
          HorizontalListViewElements(
              image: "assets/images/model1.jpeg",
              logo: "assets/images/chanellogo.jpg"),
          SizedBox(
            width: 20,
          ),
          HorizontalListViewElements(
              image: "assets/images/model2.jpeg",
              logo: "assets/images/chloelogo.png"),
          SizedBox(
            width: 20,
          ),
          HorizontalListViewElements(
              image: "assets/images/model3.jpeg",
              logo: "assets/images/louisvuitton.jpg"),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
