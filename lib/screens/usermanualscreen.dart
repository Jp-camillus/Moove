import 'package:flutter/material.dart';
import 'package:foodapp/widgets/appbartwidget.dart';

class Usermanualscreen extends StatelessWidget {
  const Usermanualscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      appBar: Appbartwidget(text: 'User Manual'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                'Movve Vendor App User Manual',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: h * 0.035,
                ),
              ),
              SizedBox(height: h * 0.015),
              Text('Your step-by-step guide to growing with movve'),
              SizedBox(height: h * 0.015),
              Text(
                '1. Getting Started',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: h * 0.035,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '1.1 Account Setup',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text('\u2022 Download the app from [Google Play/App Store]'),
                  Text(
                    '\u2022 Register with: Phone number → OTP verification → Business details',
                  ),
                  Text(
                    '\u2022 Tip: "Complete verification to access all features!',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '1.2 Navigation Tour',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text('\u2022 Home: Real-time stats'),
                  Text('\u2022 Orders: Manage incoming requests'),
                  Text('\u2022 Products: Add/edit items'),

                  Text('\u2022 Insights: Performance metrics'),

                  Text('\u2022 Profile: Settings & support'),
                ],
              ),

              Text(
                '2. Core Features',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: h * 0.035,
                ),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '2.1 Managing Orders',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text('\u2022 Accept/reject orders (15-min timeout)'),

                  Text('\u2022 Mark orders as: Preparing → Ready → Completed'),

                  Text(
                    '\u2022 Pro Tip: "Use ‘Prep Timer’ to speed up fulfillment"',
                  ),

                  Text('\u2022 Profile: Settings & support'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '2.2 Adding Products',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text('\u2022 Required fields: Name, price, category, image'),

                  Text(
                    '\u2022 Optional: Description, variants (e.g., size/spice level)',
                  ),

                  Text(
                    '\u2022 Warning: "Incomplete listings get 50% fewer orders"',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '2.3 Payouts',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text('\u2022 Minimum withdrawal: ₦1,000'),

                  Text('\u2022 Processing time: 24-48 hours'),
                ],
              ),

              Text(
                '3. Optimizing Performance',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: h * 0.035,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '3.1 Store Insights',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text(
                    '\u2022 Track: Top-selling items, peak hours, customer feedback',
                  ),

                  Text(
                    '\u2022 Action: "Stock 20% more on weekends (your busiest days)"',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '3.2 Marketing Tools',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text('\u2022 Create discounts: Percentage or fixed-amount'),

                  Text('\u2022 Share your store link via WhatsApp/Instagram'),
                ],
              ),
              Text(
                '4. Troubleshooting',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: h * 0.035,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '4.1 Common Issues',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text(
                    '\u2022 "Orders not appearing?"→ Check internet → Refresh app',
                  ),

                  Text(
                    '\u2022 "Can’t withdraw earnings?"→ Verify bank details',
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4.2 Contact Support',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text('\u2022 In-app chat: Look for the 💬 icon'),

                  Text(
                    '\u2022 Email: support@movve.ng',
                    style: TextStyle(color: Colors.green),
                  ),
                  Text('\u2022 Hotline: 0900-MOVVE (246772)'),
                ],
              ),
              Text(
                '5. Safety & Best Practices',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: h * 0.035,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    '4.2 Contact Support',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: h * 0.018,
                    ),
                  ),
                  Text('\u2022 Update app monthly for new features'),

                  Text(
                    '\u2022 "Enable notifications to avoid missing orders!"',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
