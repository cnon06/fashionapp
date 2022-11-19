
import 'package:flutter/material.dart';

import 'cons.dart';

class Tag extends StatelessWidget {
  
  final String label;
  
  const Tag({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.brown.withOpacity(0.2),
        ),
        child:  Center(
            child: Text(
              label,
          //"#Louisvuitton",
          style: const TextStyle(fontFamily: font, color: Colors.brown),
        )),
      ),
    );
  }
}