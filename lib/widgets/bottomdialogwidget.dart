import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

void showCustomBottomDialog({
  required BuildContext context,
  String tittle = 'Confirm Logout',
  String subtittle1 = 'Are you sure you want to sign out?',
  String subtittle2 = 'You will need to log back in to use Movve.',
  Function()? logoutfunction,
  String firstbutton = 'No go back home',

  String secondbutton = 'Yes log me out',

  bool isDismissible = true,
  bool enableDrag = true,
}) {
  var w = MediaQuery.of(context).size.width.round();
  var h = MediaQuery.of(context).size.height.round();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, // allows full height
    isDismissible: isDismissible,
    enableDrag: enableDrag,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 16,
        left: 16,
        right: 16,
      ),
      child: Container(
        height: h * 0.45,
        width: w.toDouble(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image(image: AssetImage(Appimages.back)),
                ),
              ],
            ),
            Container(
              height: h * 0.12,
              width: w * 0.23,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Appcolors.lightred,
              ),
              child: Image(image: AssetImage(Appimages.logout)),
            ),
            SizedBox(height: h * 0.015),
            Text(
              tittle,
              style: TextStyle(color: Colors.red, fontSize: h * 0.02),
            ),
            SizedBox(height: h * 0.015),
            Text(subtittle1, style: TextStyle(fontSize: h * 0.02)),
            Text(subtittle2, style: TextStyle(fontSize: h * 0.02)),
            SizedBox(height: h * 0.015),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                height: h * 0.065,
                width: w * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 0.03),
                  color: Appcolors.maincolors,
                ),
                alignment: Alignment.center,
                child: Text(
                  firstbutton,
                  style: TextStyle(color: Colors.white, fontSize: h * 0.02),
                ),
              ),
            ),
            SizedBox(height: h * 0.013),
            InkWell(
              onTap: logoutfunction,
              child: Container(
                height: h * 0.065,
                width: w * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(h * 0.03),
                  color: Appcolors.lightred,
                ),
                alignment: Alignment.center,
                child: Text(
                  secondbutton,
                  style: TextStyle(color: Colors.red, fontSize: h * 0.02),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
