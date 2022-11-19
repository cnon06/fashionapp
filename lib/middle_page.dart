import 'package:flutter/material.dart';

import 'bottomicons.dart';
import 'cons.dart';
import 'modelgrid.dart';
import 'mylisttile.dart';
import 'tag.dart';

class MiddlePage extends StatelessWidget {
  const MiddlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const MyListTile(),
              const SizedBox(
                height: 15,
              ),
              Text(
                "This official website features a ribbed knit zipper jacket that is"
                "modern and stylish. It looks very temparament and is recommend to friends.",
                style: TextStyle(
                    fontSize: 14, fontFamily: font, color: Colors.grey[600]),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FittedBox(
                    child: ModelGrid(
                      image: "assets/images/modelgrid1.jpeg",
                      width: 170,
                      height: 250,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 170,
                    height: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  const [
                        FittedBox(
                          child: ModelGrid(
                              height: 120,
                              width: 170,
                              image: "assets/images/modelgrid2.jpeg"),
                        ),
                        FittedBox(
                          child: ModelGrid(
                              height: 120,
                              width: 170,
                              image: "assets/images/modelgrid3.jpeg"),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [
                  Tag(label: "#Louisvuitton"),
                  SizedBox(width: 3),
                  Tag(label: "#Chloe"),
             
                ],
              ),
              const Divider(
                height: 20,
              ),
              const BottomIcons()
            ],
          ),
        ),
      ),
    );
  }
}




