import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CardBox extends StatelessWidget {
  const CardBox({
    super.key,
    required this.cardImageURL,
    required this.mainTitle,
  });

  final String cardImageURL; //Kart foroğrafı
  final String mainTitle; //Kart ismi
  // final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              height: 120,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/$cardImageURL",
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            //kalp iconu konacak
            Positioned(
              top: 0,
              right: 0,
              child: FloatingActionButton(
                child: Icon(Icons.favorite_border),
                elevation: 10,
                backgroundColor: Colors.black,
                onPressed: () {},
                mini: true,
              ),
            )
          ],
        ),
        Text(
          mainTitle,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star_half_rounded),
            const Text(
              " 4.5  |  ",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            Container(
              height: 20,
              width: 60,
              margin: EdgeInsets.only(left: 0),
              padding: EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "  1.335 sold",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        const Text(
          "\$100.00",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
