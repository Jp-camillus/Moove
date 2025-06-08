import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/constants/colors.dart';
import 'package:foodapp/widgets/appbartwidget.dart';
import 'package:foodapp/widgets/custombuttonwidget.dart';
import 'package:foodapp/widgets/radiobuttonwidget.dart';
import 'package:foodapp/widgets/textfieldwidget.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class Storeoperationscreen extends StatefulWidget {
  const Storeoperationscreen({super.key});

  @override
  State<Storeoperationscreen> createState() => _StoreoperationscreenState();
}

class _StoreoperationscreenState extends State<Storeoperationscreen> {
  bool _ischecked = false;

  @override
  Widget build(BuildContext context) {
    final List<String> items1 = [
      '12:00 AM',
      '1:00 AM',
      '2:00 AM',
      '3:00 AM',
      '4:00 AM',
      '5:00 AM',
      '6:00 AM',
      '7:00 AM',
      '8:00 AM',
      '9:00 AM',
      '10:00 AM',
      '11:00 AM',
      '12:00 PM',
      '1:00 PM',
      '2:00 PM',
      '3:00 PM',
      '4:00 PM',
      '5:00 PM',
      '6:00 PM',
      '7:00 PM',
      '8:00 PM',
      '9:00 PM',
      '10:00 PM',
      '11:00 PM',
    ];
    final List<String> items2 = [
      '12:00 AM',
      '1:00 AM',
      '2:00 AM',
      '3:00 AM',
      '4:00 AM',
      '5:00 AM',
      '6:00 AM',
      '7:00 AM',
      '8:00 AM',
      '9:00 AM',
      '10:00 AM',
      '11:00 AM',
      '12:00 PM',
      '1:00 PM',
      '2:00 PM',
      '3:00 PM',
      '4:00 PM',
      '5:00 PM',
      '6:00 PM',
      '7:00 PM',
      '8:00 PM',
      '9:00 PM',
      '10:00 PM',
      '11:00 PM',
    ];
    final List<String> items3 = [
      '12:00 AM',
      '1:00 AM',
      '2:00 AM',
      '3:00 AM',
      '4:00 AM',
      '5:00 AM',
      '6:00 AM',
      '7:00 AM',
      '8:00 AM',
      '9:00 AM',
      '10:00 AM',
      '11:00 AM',
      '12:00 PM',
      '1:00 PM',
      '2:00 PM',
      '3:00 PM',
      '4:00 PM',
      '5:00 PM',
      '6:00 PM',
      '7:00 PM',
      '8:00 PM',
      '9:00 PM',
      '10:00 PM',
      '11:00 PM',
    ];
    final List<String> items4 = [
      '12:00 AM',
      '1:00 AM',
      '2:00 AM',
      '3:00 AM',
      '4:00 AM',
      '5:00 AM',
      '6:00 AM',
      '7:00 AM',
      '8:00 AM',
      '9:00 AM',
      '10:00 AM',
      '11:00 AM',
      '12:00 PM',
      '1:00 PM',
      '2:00 PM',
      '3:00 PM',
      '4:00 PM',
      '5:00 PM',
      '6:00 PM',
      '7:00 PM',
      '8:00 PM',
      '9:00 PM',
      '10:00 PM',
      '11:00 PM',
    ];
    final List<String> days = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    final List<String> delivery = ['Door Step', 'Pick Up', 'Both'];

    String? selectedValue1;
    String? selectedValue2;
    String? selectedValue3;
    String? selectedValue4;
    String? selectedValue5;
    String? selectedValue6;
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      appBar: Appbartwidget(text: 'Store Operations'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h * 0.02),
              Center(
                child: Container(
                  height: h * 0.15,
                  width: w * 0.4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(Appimages.storeprofile),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 109, 107, 107),
                    child: Image.asset(Appimages.camera),
                  ),
                ),
              ),
              Center(child: Text('Business Logo')),
              SizedBox(height: h * 0.02),
              Text('business Name'),
              SizedBox(height: h * 0.01),
              Textfieldwidget(tittle: 'Tasty Bites'),
              Text('business Description'),
              SizedBox(height: h * 0.01),
              Textfieldwidget(tittle: 'Best food in the city of Eket'),
              SizedBox(height: h * 0.01),
              Text('Upload Cover Image'),
              SizedBox(height: h * 0.01),
              Container(
                height: h * 0.2,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Appcolors.cardcolor,
                  border: DashedBorder.fromBorderSide(
                    dashLength: 10,
                    side: BorderSide(width: 1),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage(Appimages.image)),
                      Text(
                        'Upload Image',
                        style: TextStyle(color: Appcolors.textcolor),
                      ),
                    ],
                  ),
                ),
              ),
              Text('PNG,/PDF max 5mb'),
              SizedBox(height: h * 0.02),
              Text('Business Email'),
              SizedBox(height: h * 0.01),
              Textfieldwidget(tittle: 'The Official Email of the Business'),
              SizedBox(height: h * 0.02),
              Text('Business Phone Number'),
              SizedBox(height: h * 0.01),
              Textfieldwidget(
                tittle: 'The Official Phone Number of the business',
              ),
              SizedBox(height: h * 0.02),
              Text('Address'),
              SizedBox(height: h * 0.01),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.location_on,
                    color: Appcolors.maincolors,
                  ),
                  hint: Text(
                    'Eket, Eket, Akwaibom Nigeria',
                    style: TextStyle(color: Colors.grey),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: h * 0.02),
              Text(
                'Select Operating Days',
                style: TextStyle(
                  fontSize: h * 0.02,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: h * 0.02),
              Row(
                children: [
                  RadioButton(tittle: 'Sunday'),
                  SizedBox(width: w * 0.01),
                  RadioButton(tittle: 'Monday'),
                  SizedBox(width: w * 0.01),
                  RadioButton(tittle: 'Tuesday'),
                  SizedBox(width: w * 0.01),
                ],
              ),
              SizedBox(height: h * 0.01),

              Row(
                children: [
                  RadioButton(tittle: 'Wednesday'),
                  SizedBox(width: w * 0.01),
                  RadioButton(tittle: 'Thursday'),
                  SizedBox(width: w * 0.01),
                  RadioButton(tittle: 'Friday'),
                ],
              ),
              SizedBox(height: h * 0.01),

              Row(
                children: [
                  RadioButton(tittle: 'Sartuday'),
                  SizedBox(width: w * 0.01),
                ],
              ),
              SizedBox(height: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('From'),
                      SizedBox(height: h * 0.01),
                      SizedBox(
                        width: w * 0.43,
                        child: DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            // Add more decoration..
                          ),
                          hint: const Text(
                            'Select',
                            style: TextStyle(fontSize: 14),
                          ),
                          items: items1
                              .map(
                                (item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              )
                              .toList(),

                          onChanged: (value) {},
                          onSaved: (value) {
                            selectedValue1 = value.toString();
                          },

                          iconStyleData: const IconStyleData(
                            icon: Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.watch_later,
                                color: Colors.black45,
                              ),
                            ),
                            iconSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: w * 0.01),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('To'),
                      SizedBox(height: h * 0.01),
                      SizedBox(
                        width: w * 0.43,
                        child: DropdownButtonFormField2<String>(
                          isExpanded: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            // Add more decoration..
                          ),
                          hint: const Text(
                            'Select',
                            style: TextStyle(fontSize: 14),
                          ),
                          items: items1
                              .map(
                                (item2) => DropdownMenuItem<String>(
                                  value: item2,
                                  child: Text(
                                    item2,
                                    style: const TextStyle(fontSize: 14),
                                  ),
                                ),
                              )
                              .toList(),

                          onChanged: (value) {},
                          onSaved: (value) {
                            selectedValue2 = value.toString();
                          },

                          iconStyleData: const IconStyleData(
                            icon: Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.watch_later,
                                color: Colors.black45,
                              ),
                            ),
                            iconSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: h * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Specific Days',
                    style: TextStyle(
                      fontSize: h * 0.02,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _ischecked = !_ischecked;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: _ischecked ? Colors.green : Appcolors.maincolors,
                        shape: BoxShape.circle,
                      ),
                      alignment: Alignment.center,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: h * 0.025,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              _ischecked
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Day'),
                            SizedBox(height: h * 0.01),
                            SizedBox(
                              width: w * 0.3,
                              child: DropdownButtonFormField2<String>(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // Add more decoration..
                                ),
                                hint: const Text(
                                  'Select',
                                  style: TextStyle(fontSize: 14),
                                ),
                                items: days
                                    .map(
                                      (days) => DropdownMenuItem<String>(
                                        value: days,
                                        child: Text(
                                          days,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    )
                                    .toList(),

                                onChanged: (value) {},
                                onSaved: (value) {
                                  selectedValue5 = value.toString();
                                },

                                iconStyleData: const IconStyleData(
                                  icon: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.black45,
                                  ),
                                  iconSize: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('From'),
                            SizedBox(height: h * 0.01),
                            SizedBox(
                              width: w * 0.3,
                              child: DropdownButtonFormField2<String>(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // Add more decoration..
                                ),
                                hint: const Text(
                                  'Select',
                                  style: TextStyle(fontSize: 14),
                                ),
                                items: items3
                                    .map(
                                      (item3) => DropdownMenuItem<String>(
                                        value: item3,
                                        child: Text(
                                          item3,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    )
                                    .toList(),

                                onChanged: (value) {},
                                onSaved: (value) {
                                  selectedValue3 = value.toString();
                                },

                                iconStyleData: const IconStyleData(
                                  icon: Padding(
                                    padding: EdgeInsets.only(right: 1),
                                    child: Icon(
                                      Icons.watch_later,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  iconSize: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text('From'),
                            SizedBox(height: h * 0.01),
                            SizedBox(
                              width: w * 0.3,
                              child: DropdownButtonFormField2<String>(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  // Add more decoration..
                                ),
                                hint: const Text(
                                  'Select',
                                  style: TextStyle(fontSize: 14),
                                ),
                                items: items4
                                    .map(
                                      (item4) => DropdownMenuItem<String>(
                                        value: item4,
                                        child: Text(
                                          item4,
                                          style: const TextStyle(fontSize: 14),
                                        ),
                                      ),
                                    )
                                    .toList(),

                                onChanged: (value) {},
                                onSaved: (value) {
                                  selectedValue4 = value.toString();
                                },

                                iconStyleData: const IconStyleData(
                                  icon: Padding(
                                    padding: EdgeInsets.only(right: 1),
                                    child: Icon(
                                      Icons.watch_later,
                                      color: Colors.black45,
                                    ),
                                  ),
                                  iconSize: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  : Text(''),
              SizedBox(height: h * 0.01),
              Text('Delivery Type'),
              SizedBox(
                width: w.toDouble(),
                child: DropdownButtonFormField2<String>(
                  isExpanded: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    // Add more decoration..
                  ),
                  hint: const Text('Select', style: TextStyle(fontSize: 14)),
                  items: delivery
                      .map(
                        (delivery) => DropdownMenuItem<String>(
                          value: delivery,
                          child: Text(
                            delivery,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      )
                      .toList(),

                  onChanged: (value) {},
                  onSaved: (value) {
                    selectedValue5 = value.toString();
                  },

                  iconStyleData: const IconStyleData(
                    icon: Padding(
                      padding: EdgeInsets.only(right: 1),
                      child: Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: Colors.black45,
                      ),
                    ),
                    iconSize: 24,
                  ),
                ),
              ),
              SizedBox(height: h * 0.02),
              Text(
                'Withdrawal Information',
                style: TextStyle(
                  fontSize: h * 0.02,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: h * 0.01),
              Container(
                height: h * 0.13,
                width: w.toDouble(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w * 0.01),
                  color: Appcolors.cardcolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Chisom Chukwukwe',
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'First Bank',
                            style: TextStyle(color: Appcolors.textcolor),
                          ),
                          Text(
                            '1564945656456165154',
                            style: TextStyle(color: Appcolors.textcolor),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '..',
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.01),
              Container(
                height: h * 0.13,
                width: w.toDouble(),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(w * 0.01),
                  color: Appcolors.cardcolor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Crypto Payment',
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Preffered Currency',
                            style: TextStyle(color: Appcolors.textcolor),
                          ),
                          Text(
                            'jwab',
                            style: TextStyle(color: Appcolors.textcolor),
                          ),
                          Text(
                            'hrvvq5632r86hsvkjhjfbchsj3572726734t3qc',
                            style: TextStyle(color: Appcolors.textcolor),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '..',
                            style: TextStyle(
                              fontSize: h * 0.02,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Solana',
                            style: TextStyle(color: Appcolors.textcolor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.02),
              Custombuttonwidget(),
            ],
          ),
        ),
      ),
    );
  }
}
