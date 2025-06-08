import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:foodapp/screens/personaldetailscreen.dart';
import 'package:foodapp/screens/usermanualscreen.dart';
import 'package:foodapp/widgets/appbartwidget.dart';
import 'package:foodapp/widgets/cardwidget.dart';
import 'package:get/route_manager.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Ownerprofilescreen extends StatelessWidget {
  const Ownerprofilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      appBar: Appbartwidget(text: 'Owners Profile'),
      body: Padding(
        padding: EdgeInsets.all(h * 0.02),
        child: Column(
          children: [
            SizedBox(height: h * 0.02),
            Container(
              height: h * 0.11,
              width: w.toDouble(),
              decoration: BoxDecoration(
                color: Appcolors.cardcolor,
                borderRadius: BorderRadius.circular(h * 0.01),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Appimages.storeprofile),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Tasty Bites',
                              style: TextStyle(
                                fontSize: h * 0.02,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Chukwukwuemekachisom@gmail.com',
                              style: TextStyle(
                                fontSize: h * 0.015,
                                color: Appcolors.textcolor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: h * 0.03),
            InkWell(
              onTap: () {
                Get.to(Personaldetailscreen());
              },
              child: Cardwidget(
                leading: AssetImage(Appimages.profile),
                tittle: 'Personal Details',
              ),
            ),
            SizedBox(height: h * 0.01),
            InkWell(
              onTap: () {
                Get.to(Usermanualscreen());
              },
              child: Cardwidget(
                leading: AssetImage(Appimages.vector),
                tittle: 'User manual',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
