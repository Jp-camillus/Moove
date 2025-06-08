import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:foodapp/screens/ownerprofilescreen.dart';
import 'package:foodapp/screens/securityscreen.dart';
import 'package:foodapp/screens/storeinsightscreen.dart';
import 'package:foodapp/screens/storeprofilescreen.dart';
import 'package:foodapp/widgets/bottomdialogwidget.dart';
import 'package:foodapp/widgets/cardwidget.dart';
import 'package:get/route_manager.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      appBar: AppBar(
        // actionsPadding: EdgeInsets.only(right: h * 0.02),
        // actions: [
        //   Text('Share', style: TextStyle(color: Appcolors.maincolors)),
        //   Image.asset(Appimages.export),
        // ],
        leadingWidth: w.toDouble(),
        leading: Padding(
          padding: EdgeInsets.only(left: h * 0.02, right: h * 0.02),

          child: Row(
            children: [
              Row(
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Text('Share', style: TextStyle(color: Appcolors.maincolors)),
                  Image.asset(Appimages.export),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Complete Setup',
                        style: TextStyle(
                          fontSize: h * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'continue',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.01),
                  Text('Just a few steps left to setup your store fully'),
                  SizedBox(height: h * 0.01),
                  StepProgressIndicator(
                    totalSteps: 100,
                    currentStep: 40,
                    size: 8,
                    padding: 0,
                    selectedColor: Appcolors.maincolors,
                    unselectedColor: Appcolors.lightblack,
                    roundedEdges: Radius.circular(10),
                  ),
                  SizedBox(height: h * 0.05),
                  InkWell(
                    onTap: () {
                      Get.to(Storeprofilescreen());
                    },
                    child: Cardwidget(
                      leading: AssetImage(Appimages.shop),
                      tittle: 'Store Profile',
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  InkWell(
                    onTap: () {
                      Get.to(Storeinsightscreen());
                    },
                    child: Cardwidget(
                      leading: AssetImage(Appimages.chart),
                      tittle: 'Store Insight',
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  InkWell(
                    onTap: () {
                      Get.to(Ownerprofilescreen());
                    },
                    child: Cardwidget(
                      leading: AssetImage(Appimages.profile),
                      tittle: 'Owner Profile',
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  InkWell(
                    onTap: () {
                      Get.to(Securityscreen());
                    },
                    child: Cardwidget(
                      leading: AssetImage(Appimages.key),
                      tittle: 'Security',
                    ),
                  ),
                  SizedBox(height: h * 0.01),
                  InkWell(
                    onTap: () {
                      showCustomBottomDialog(context: context);
                    },
                    child: Container(
                      height: h * 0.08,
                      width: w.toDouble(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(h * 0.01),
                        border: Border.all(color: Colors.red),
                      ),
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image(image: AssetImage(Appimages.logout1)),
                            SizedBox(width: w * 0.02),
                            Text(
                              'logout',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: h * 0.02,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedItemColor: Appcolors.maincolors,
        selectedLabelStyle: TextStyle(color: Appcolors.maincolors),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            label: 'Orders',
            icon: Image(image: AssetImage(Appimages.reserve)),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Image(image: AssetImage(Appimages.menuboard)),
          ),
          BottomNavigationBarItem(
            label: 'Wallet',
            icon: Image(image: AssetImage(Appimages.wallet)),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Image(image: AssetImage(Appimages.frame)),
          ),
        ],
      ),
    );
  }
}
