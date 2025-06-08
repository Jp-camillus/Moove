import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:foodapp/screens/Orderdetatailscreen.dart';
import 'package:foodapp/screens/orderhistoryscreen.dart';
import 'package:foodapp/screens/storeoperation.dart';
import 'package:foodapp/widgets/appbartwidget.dart';
import 'package:foodapp/widgets/cardwidget.dart';
import 'package:get/get.dart';

class Storeprofilescreen extends StatelessWidget {
  const Storeprofilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      appBar: Appbartwidget(text: 'Store Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: h * 0.012),
            Container(
              height: h * 0.2,
              width: w.toDouble(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Appimages.profileimage),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(h * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                                  Icon(
                                    Icons.location_on,
                                    size: 20,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    'Eket, Eket, Akwaibon, Nigeria',
                                    style: TextStyle(
                                      fontSize: h * 0.015,
                                      color: Appcolors.textcolor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text('5.0.0'),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.amberAccent,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  InkWell(
                    onTap: () {},
                    child: Cardwidget(
                      leading: AssetImage(Appimages.shop),
                      tittle: 'Store Details',
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  InkWell(
                    onTap: () {
                      Get.to(Storeoperationscreen());
                    },
                    child: Cardwidget(
                      leading: AssetImage(Appimages.activity),
                      tittle: 'Store Operation',
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  InkWell(
                    onTap: () {
                      Get.to(Orderhistoryscreen());
                    },
                    child: Cardwidget(
                      leading: AssetImage(Appimages.clock),
                      tittle: 'Order History',
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
