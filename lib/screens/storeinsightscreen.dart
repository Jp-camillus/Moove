import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:foodapp/widgets/appbartwidget.dart';
import 'package:foodapp/widgets/card2widget.dart';
import 'package:foodapp/widgets/widgettexter.dart';

class Storeinsightscreen extends StatefulWidget {
  const Storeinsightscreen({super.key});

  @override
  State<Storeinsightscreen> createState() => _StoreinsightscreenState();
}

class _StoreinsightscreenState extends State<Storeinsightscreen> {
  bool _showamaount = true;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    var data = [8.0, 7.0, 7.5, 9.0, 8.0, 10.0, 9.0];
    final List<MonthlyExpense> sampleData = [
      MonthlyExpense('Jan', 30000),
      MonthlyExpense('Feb', 25000),
      MonthlyExpense('Mar', 40050),
      MonthlyExpense('Apr', 30000),
      MonthlyExpense('May', 44000),
      MonthlyExpense('Jun', 50000),
      MonthlyExpense('Jul', 60000),
      MonthlyExpense('Aug', 50000),
    ];
    return Scaffold(
      appBar: Appbartwidget(text: 'Store Insight'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * 0.43,
              decoration: BoxDecoration(color: Appcolors.cardcolor),
              width: w.toDouble(),
              child: Padding(
                padding: EdgeInsets.all(h * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Average Monthly Sales',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: h * 0.018,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _showamaount = !_showamaount;
                            });
                          },
                          child: _showamaount
                              ? Icon(
                                  Icons.visibility,
                                  color: Appcolors.textcolor,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: Appcolors.textcolor,
                                ),
                        ),
                      ],
                    ),
                    Text(
                      'Your total revenue over the past 30 days, divided by the number of months tracked',
                      style: TextStyle(fontSize: h * 0.014),
                    ),
                    SizedBox(height: h * 0.01),
                    _showamaount
                        ? Text(
                            '₦50,000.00',
                            style: TextStyle(
                              fontSize: h * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : Text(
                            '*******',
                            style: TextStyle(
                              fontSize: h * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    SizedBox(height: h * 0.01),

                    Container(
                      height: h * 0.04,
                      width: w * 0.55,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(w * 0.03),
                      ),
                      child: Row(
                        children: [
                          Image(image: AssetImage(Appimages.arrow_up)),
                          Text(
                            '45.57% higher',
                            style: TextStyle(
                              color: Appcolors.maincolors,
                              fontSize: h * 0.014,
                            ),
                          ),
                          Text(
                            'than last month',
                            style: TextStyle(fontSize: h * 0.014),
                          ),
                        ],
                      ),
                    ),

                    SpendingLineChart(data: sampleData),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(h * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * 0.1,
                    width: w.toDouble(),
                    decoration: BoxDecoration(
                      color: Appcolors.cardcolor,
                      borderRadius: BorderRadius.circular(h * 0.01),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: Colors.orange,
                                size: h * 0.05,
                              ),
                              SizedBox(width: w * 0.02),
                              Text(
                                'Your Rating',
                                style: TextStyle(fontSize: h * 0.02),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  RatingBar.builder(
                                    initialRating: 4.2,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemSize: h * 0.025,
                                    itemCount: 5,
                                    unratedColor: Colors.white,
                                    itemPadding: EdgeInsets.symmetric(
                                      horizontal: w * 0.01,
                                    ),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: h * 0.01,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text(
                                    '4.2',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: h * 0.02,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'From 86 ratings',
                                style: TextStyle(color: Colors.orange),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.015),
                  Text(
                    'Statistics',
                    style: TextStyle(
                      fontSize: h * 0.021,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: h * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total Orders'),
                          Container(
                            height: h * 0.05,
                            alignment: Alignment.centerLeft,
                            width: w * 0.43,
                            decoration: BoxDecoration(
                              color: Appcolors.cardcolor,
                              borderRadius: BorderRadius.circular(h * 0.01),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(h * 0.0071),
                              child: Text('702'),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Earnings'),
                          Container(
                            height: h * 0.05,
                            alignment: Alignment.centerLeft,
                            width: w * 0.43,
                            decoration: BoxDecoration(
                              color: Appcolors.cardcolor,
                              borderRadius: BorderRadius.circular(h * 0.01),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(h * 0.0071),
                              child: Text('₦200000'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Total Order'),
                          Container(
                            height: h * 0.05,
                            alignment: Alignment.centerLeft,
                            width: w * 0.43,
                            decoration: BoxDecoration(
                              color: Appcolors.cardcolor,
                              borderRadius: BorderRadius.circular(h * 0.01),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(h * 0.0071),
                              child: Text('₦50000'),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_upward,
                                color: Colors.green,
                                size: h * 0.02,
                              ),
                              Text(
                                '15% from yesterday',
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Completion Rate'),
                          Container(
                            height: h * 0.05,
                            alignment: Alignment.centerLeft,
                            width: w * 0.43,
                            decoration: BoxDecoration(
                              color: Appcolors.cardcolor,
                              borderRadius: BorderRadius.circular(h * 0.01),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(h * 0.0071),
                              child: Text('92%'),
                            ),
                          ),
                          Text(
                            '8% cancellations',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: h * 0.013,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Performers',
                        style: TextStyle(
                          fontSize: h * 0.021,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Show All',
                          style: TextStyle(color: Appcolors.textcolor),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: h * 0.01),
                  Card2widget(
                    image: AssetImage(Appimages.profileimage),
                    number: '1',
                    tittle: 'Jollof Rice',
                    subtitle: '42 orders this week',
                  ),
                  SizedBox(height: h * 0.01),
                  Card2widget(
                    image: AssetImage(Appimages.profileimage),
                    number: '2',
                    tittle: 'Jollof Rice',
                    subtitle: '42 orders this week',
                  ),
                  SizedBox(height: h * 0.01),
                  Card2widget(
                    image: AssetImage(Appimages.profileimage),
                    number: '3',
                    tittle: 'Jollof Rice',
                    subtitle: '42 orders this week',
                  ),
                ],
              ),
            ),
            Container(
              color: Appcolors.cardcolor,
              height: h * 0.04,
              width: w.toDouble(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ratings & Reviews'),
                  Text('See all', style: TextStyle(color: Appcolors.textcolor)),
                ],
              ),
            ),
            Column(
              children: List.generate(3, (index) {
                return Padding(
                  padding: EdgeInsets.all(h * 0.02),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: w * 0.04,
                                backgroundImage: AssetImage(
                                  Appimages.profileimage,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: w * 0.02),
                          Column(
                            children: [
                              Container(
                                width: w * 0.8,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Mr Chop Meat',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: h * 0.023,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_half,
                                          color: Colors.amber,
                                        ),
                                        Text('4+ Rating'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: h * 0.04),
                        child: Text(
                          'The fried rice was flavourful, with the perfect balance of spices and fresh veggies, Every bite had a nice, smoky touch and the portion was just right. Could use a bit more protien but overall, a tasty meal',
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
