import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {
  const ItemBox({super.key, required this.cardImageURL});

  final String cardImageURL; //Kart foroğrafı

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.red,
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/$cardImageURL",
                ),
                fit: BoxFit.fill),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            //üst resim
            Text(
              "\n35%",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            ListTile(
              title: Text(
                "      Today's Special!\n",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                "        Get discount for every\n        order, only valid for today",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
