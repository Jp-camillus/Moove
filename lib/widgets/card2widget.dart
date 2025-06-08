import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';

class Card2widget extends StatelessWidget {
  const Card2widget({
    super.key,
    required this.number,
    required this.tittle,
    required this.subtitle,
    required this.image,
  });
  final String number;
  final String tittle;
  final String subtitle;
  final ImageProvider<Object> image;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Appcolors.maincolors,
          radius: w * 0.06,
          child: Center(
            child: Text(
              number,
              style: TextStyle(color: Colors.white, fontSize: h * 0.025),
            ),
          ),
        ),
        SizedBox(width: w * 0.03),

        Container(
          height: h * 0.05,
          width: w * 0.14,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(w * 0.02),
            image: DecorationImage(fit: BoxFit.cover, image: image),
          ),
        ),
        SizedBox(width: w * 0.03),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tittle,
              style: TextStyle(
                color: Appcolors.maincolors,
                fontWeight: FontWeight.bold,
                fontSize: h * 0.024,
              ),
            ),
            Text(subtitle),
          ],
        ),
      ],
    );
  }
}
