import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({super.key, required this.leading, required this.tittle});
  final String tittle;
  final ImageProvider<Object> leading;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Container(
      height: h * 0.07,
      decoration: BoxDecoration(color: Appcolors.lightblack),
      width: w.toDouble(),
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image(image: leading),
            SizedBox(width: w * 0.01),
            Text(
              tittle,
              style: TextStyle(color: Appcolors.textcolor, fontSize: h * 0.02),
            ),
          ],
        ),
      ),
    );
  }
}
