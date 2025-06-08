import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:foodapp/widgets/Icontextfiedwidget.dart';
import 'package:foodapp/widgets/appbartwidget.dart';
import 'package:foodapp/widgets/custombuttonwidget.dart';
import 'package:foodapp/widgets/radiobuttonwidget.dart';

class Securityscreen extends StatelessWidget {
  const Securityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      appBar: Appbartwidget(text: 'Security'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Account Protection',
                style: TextStyle(
                  fontSize: h * 0.02,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: h * 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '🛡️ Two-Factor Authentication',
                    style: TextStyle(fontSize: h * 0.02),
                  ),
                  RadioButton(tittle: ''),
                ],
              ),
              SizedBox(height: h * 0.01),
              Text(
                'Enable or disable two factor authentificaiton',
                style: TextStyle(color: Appcolors.textcolor),
              ),
              SizedBox(height: h * 0.03),
              Text('📱 Trusted Devices', style: TextStyle(fontSize: h * 0.02)),
              SizedBox(height: h * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'iphone 13 (last used: Today 9:14)',
                    style: TextStyle(color: Appcolors.textcolor),
                  ),
                  Text('Remove', style: TextStyle(color: Colors.red)),
                ],
              ),
              SizedBox(height: h * 0.03),
              Text('🔑 Change Password', style: TextStyle(fontSize: h * 0.02)),
              SizedBox(height: h * 0.03),
              Text(
                'Current Password',
                style: TextStyle(color: Appcolors.textcolor),
              ),
              SizedBox(height: h * 0.015),
              Icontextfiedwidget(hint: 'atleast 8 charaters'),
              SizedBox(height: h * 0.03),
              Text(
                'Create Password',
                style: TextStyle(color: Appcolors.textcolor),
              ),
              SizedBox(height: h * 0.015),
              Icontextfiedwidget(hint: 'atleast 8 charaters'),
              SizedBox(height: h * 0.03),
              Text(
                'Re-enter Password',
                style: TextStyle(color: Appcolors.textcolor),
              ),
              SizedBox(height: h * 0.015),
              Icontextfiedwidget(hint: 'atleast 8 charaters'),
              SizedBox(height: h * 0.015),
              Custombuttonwidget(),
              SizedBox(height: h * 0.015),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Security Alerts',
                    style: TextStyle(
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  RadioButton(tittle: ''),
                ],
              ),
              SizedBox(height: h * 0.01),
              Text(
                'Enable Login and notifications',
                style: TextStyle(color: Appcolors.textcolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
