import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_tasarim_2/card_box.dart';
import 'package:flutter_application_tasarim_2/item_box.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> buttonList = [
    "All",
    "Sofa",
    "Chair",
    "Table",
    "Kitchen",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CarouselSlider(
              items: [
                ItemBox(cardImageURL: "avize1.png"),
                ItemBox(cardImageURL: "lamp_photo1.png"),
                ItemBox(cardImageURL: "avize3.png"),
              ],
              options: CarouselOptions(
                height: 250,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),

            Column(
              children: [
                //Most popuar , see all
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "    Most Popular",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "See All    ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  //Yan List
                  height: 50,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.all(10),
                            child: ElevatedButton(
                              onPressed: (() {}),
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(0),
                                  textStyle: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                  side: const BorderSide(
                                      color: Colors.black87, width: 1),
                                  shape: StadiumBorder()),
                              child: Text(buttonList[index]),
                            ),
                          )),
                ),
              ],
            ),
            //Alt Liste
            Padding(
              padding: EdgeInsets.all(5),
              child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  children: const [
                    CardBox(
                      cardImageURL: "sofa_photo.png",
                      mainTitle: "Glass Sofa",
                    ),
                    CardBox(
                      cardImageURL: "chair_photo.png",
                      mainTitle: "Glass Sofa",
                    ),
                    CardBox(
                      cardImageURL: "kitchen_photo.png",
                      mainTitle: "Glass Sofa",
                    ),
                    CardBox(
                      cardImageURL: "lamp_photo.png",
                      mainTitle: "Glass Sofa",
                    ),
                    CardBox(
                      cardImageURL: "table_photo.png",
                      mainTitle: "Glass Table",
                    ),
                    CardBox(
                      cardImageURL: "avize1.png",
                      mainTitle: "Glass Chandelier",
                    ),
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}
