import 'package:fashionapp/cons.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String image;
  // ignore: use_key_in_widget_constructors
  const Detail({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: image,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: SizedBox(
                width: double.infinity - 30,
                height: 250,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 120,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/dress.jpg"),
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 120,
                            width: MediaQuery.of(context).size.width - 200,
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "LAMINATED",
                                    style: TextStyle(
                                        fontFamily: font,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25),
                                  ),
                                  Text(
                                    "Louis Vuitton",
                                    style: TextStyle(
                                        fontFamily: font,
                                        color: Colors.grey,
                                        fontSize: 15),
                                  ),
                                  Text(
                                    "One button v-neck sling longsleeving waist female stitching",
                                    style: TextStyle(
                                        fontFamily: font,
                                        color: Colors.grey,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 5, bottom: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "\$6500",
                              style: TextStyle(
                                  fontFamily: font,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            FloatingActionButton(
                              heroTag: null,
                              onPressed: () {},
                              backgroundColor: Colors.brown,
                              child: const Icon(Icons.arrow_forward_ios),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 50,
              left: 100,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "LUMINATED",
                        style: TextStyle(
                            fontFamily: font,
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: 70,
                left: 20,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30,
                    ))),
          ],
        ),
      ),
    );
  }
}
