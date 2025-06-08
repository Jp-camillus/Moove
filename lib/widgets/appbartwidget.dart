import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:get/route_manager.dart';

class Appbartwidget extends StatelessWidget implements PreferredSizeWidget {
  const Appbartwidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Container(
      child: AppBar(
        title: Text(
          text,
          style: TextStyle(fontSize: h * 0.02, fontWeight: FontWeight.w700),
        ),
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Padding(
            padding: EdgeInsets.only(left: h * 0.01),
            child: Image.asset(Appimages.back),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.maxFinite, 40);
}
