import 'package:flutter/material.dart';
import 'package:foodapp/constants/colors.dart';

class Custombuttonwidget extends StatelessWidget {
  const Custombuttonwidget({
    super.key,
    this.tittle = 'Save Changes',
    this.tapfunction,
  });
  final String tittle;
  final Function()? tapfunction;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return InkWell(
      onTap: tapfunction,
      child: Container(
        height: h * 0.06,
        width: w.toDouble(),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Appcolors.maincolors,
          borderRadius: BorderRadius.circular(h * 0.01),
        ),
        child: Text(tittle, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
