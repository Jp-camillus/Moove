import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:foodapp/widgets/appbartwidget.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class Orderdetatailscreen extends StatelessWidget {
  const Orderdetatailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Appbartwidget(text: 'Order Details'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '₦CV-4821',
                        style: TextStyle(
                          fontSize: h * 0.02,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text('3mins ago'),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Paid',
                          style: TextStyle(color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        height: h * 0.04,
                        width: w * 0.13,
                        decoration: BoxDecoration(
                          color: Appcolors.maincolors,
                          borderRadius: BorderRadius.circular(h * 0.0081),
                        ),
                      ),
                      SizedBox(width: w * 0.01),
                      Container(
                        child: Text(
                          'Delivered',
                          style: TextStyle(color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        height: h * 0.04,
                        width: w * 0.2,
                        decoration: BoxDecoration(
                          color: Appcolors.maincolors,
                          borderRadius: BorderRadius.circular(h * 0.0081),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: h * 0.02),
              Text(
                'Order Summary',
                style: TextStyle(
                  fontSize: h * 0.02,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: h * 0.017),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Customer:',
                    style: TextStyle(
                      fontSize: h * 0.02,
                      color: Appcolors.textcolor,
                    ),
                  ),
                  Text(
                    'Alex M',
                    style: TextStyle(fontSize: h * 0.02, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: h * 0.017),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Type:',
                    style: TextStyle(
                      fontSize: h * 0.02,
                      color: Appcolors.textcolor,
                    ),
                  ),
                  Text(
                    'Door delivery',
                    style: TextStyle(fontSize: h * 0.02, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: h * 0.017),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery time:',
                    style: TextStyle(
                      fontSize: h * 0.02,
                      color: Appcolors.textcolor,
                    ),
                  ),
                  Text(
                    '2:38 PM',
                    style: TextStyle(fontSize: h * 0.02, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: h * 0.017),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount:',
                    style: TextStyle(
                      fontSize: h * 0.02,
                      color: Appcolors.textcolor,
                    ),
                  ),
                  Text(
                    '₦30000',
                    style: TextStyle(fontSize: h * 0.02, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(height: h * 0.017),
              SizedBox(height: h * 0.02),
              Text(
                'Item Breakdown',
                style: TextStyle(
                  fontSize: h * 0.02,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: h * 0.017),
              Container(
                height: h * 0.39,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Appcolors.lightblack,
                  border: DashedBorder.fromBorderSide(
                    dashLength: 10,
                    side: BorderSide(width: 1, color: Appcolors.textcolor),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Item 1',
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: h * 0.07,
                            width: w * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(h * 0.01),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(Appimages.profileimage),
                              ),
                            ),
                          ),
                          SizedBox(width: w * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jollof Rice',
                                style: TextStyle(
                                  color: Appcolors.maincolors,
                                  fontSize: h * 0.02,
                                ),
                              ),
                              Text('₦50000'),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(h * 0.025),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Add-Ons',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text('₦5000'),
                              ],
                            ),
                            SizedBox(height: h * 0.02),
                            Text(
                              'Meat',
                              style: TextStyle(color: Appcolors.textcolor),
                            ),
                            SizedBox(height: h * 0.01),
                            Text(
                              'Fish',
                              style: TextStyle(color: Appcolors.textcolor),
                            ),
                            SizedBox(height: h * 0.01),
                            Text(
                              'Nnfi and Palmwine',
                              style: TextStyle(color: Appcolors.textcolor),
                            ),
                            SizedBox(height: h * 0.01),
                            Text(
                              'Whateever',
                              style: TextStyle(color: Appcolors.textcolor),
                            ),
                            SizedBox(height: h * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total:',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  '₦5000',
                                  style: TextStyle(
                                    color: Appcolors.maincolors,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: h * 0.01),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.017),
              Container(
                height: h * 0.3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Appcolors.lightblack,
                  border: DashedBorder.fromBorderSide(
                    dashLength: 10,
                    side: BorderSide(width: 1, color: Appcolors.textcolor),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Item 1',
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: h * 0.07,
                            width: w * 0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(h * 0.01),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(Appimages.profileimage),
                              ),
                            ),
                          ),
                          SizedBox(width: w * 0.02),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jollof Rice',
                                style: TextStyle(
                                  color: Appcolors.maincolors,
                                  fontSize: h * 0.02,
                                ),
                              ),
                              Text('₦50000'),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(h * 0.025),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Add-Ons',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text('₦5000'),
                              ],
                            ),
                            SizedBox(height: h * 0.02),
                            Text(
                              'Meat',
                              style: TextStyle(color: Appcolors.textcolor),
                            ),

                            SizedBox(height: h * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total:',
                                  style: TextStyle(fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  '₦5000',
                                  style: TextStyle(
                                    color: Appcolors.maincolors,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: h * 0.01),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
