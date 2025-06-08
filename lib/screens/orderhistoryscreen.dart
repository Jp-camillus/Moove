import 'package:flutter/material.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:foodapp/screens/Orderdetatailscreen.dart';
import 'package:foodapp/widgets/appbartwidget.dart';
import 'package:get/route_manager.dart';

class Orderhistoryscreen extends StatelessWidget {
  const Orderhistoryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      appBar: Appbartwidget(text: 'Order History'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            children: [
              Column(
                children: List.generate(
                  4,
                  (index) => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(Orderdetatailscreen());
                        },
                        child: Container(
                          height: h * 0.15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(h * 0.01),
                          ),
                          width: w.toDouble(),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Order #2059',
                                      style: TextStyle(
                                        color: Appcolors.maincolors,
                                      ),
                                    ),
                                    Text(
                                      '3 Items',
                                      style: TextStyle(
                                        fontSize: h * 0.02,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Prep Time:',
                                          style: TextStyle(
                                            fontSize: h * 0.02,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(width: w * 0.01),
                                        Text('8 mins'),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'View Details',
                                      style: TextStyle(fontSize: h * 0.015),
                                    ),
                                    Text(
                                      '₦2,500',
                                      style: TextStyle(
                                        color: Appcolors.maincolors,
                                      ),
                                    ),
                                    Text('Paid Via Move Wallet'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                    ],
                  ),
                ),
              ),
              Container(
                height: h * 0.15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(h * 0.01),
                ),
                width: w.toDouble(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order #2059',
                            style: TextStyle(color: Appcolors.maincolors),
                          ),
                          Text(
                            '3 Items',
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Prep Time:',
                                style: TextStyle(
                                  fontSize: h * 0.02,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: w * 0.01),
                              Text('0 mins'),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'View Details',
                            style: TextStyle(fontSize: h * 0.015),
                          ),
                          Text(
                            '₦2,500',
                            style: TextStyle(color: Appcolors.maincolors),
                          ),
                          Text('Canceled', style: TextStyle(color: Colors.red)),
                        ],
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
