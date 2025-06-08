import 'dart:io';

import 'package:flutter/material.dart';
import 'package:foodapp/constants/appimages.dart';
import 'package:foodapp/widgets/appbartwidget.dart';
import 'package:foodapp/widgets/custombuttonwidget.dart';
import 'package:foodapp/widgets/textfieldwidget.dart';
import 'package:image_picker/image_picker.dart';

class Personaldetailscreen extends StatefulWidget {
  const Personaldetailscreen({super.key});

  @override
  State<Personaldetailscreen> createState() => _PersonaldetailscreenState();
}

class _PersonaldetailscreenState extends State<Personaldetailscreen> {
  File? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: Appbartwidget(text: 'Personal Details'),
      body: Padding(
        padding: EdgeInsets.all(h * 0.02),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: w * 0.25,
                      backgroundImage: _imageFile != null
                          ? FileImage(_imageFile!)
                          : AssetImage(Appimages.pprofile) as ImageProvider,
                    ),
                    Positioned(
                      bottom: h * 0.14,
                      left: h * 0.18,
                      child: InkWell(
                        onTap: _pickImage,
                        child: Image.asset(
                          Appimages.purplecamera,
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: h * 0.02),
              Center(
                child: Text(
                  'Profile Image',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: h * 0.03),

              // Business Name
              Text(
                'Business Name',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: h * 0.01),
              Textfieldwidget(tittle: 'Tasty Bites'),

              // Business Description
              SizedBox(height: h * 0.02),
              Text(
                'Business Description',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: h * 0.01),
              Textfieldwidget(tittle: 'Best food in the city of Eket'),

              SizedBox(height: h * 0.05),
              Custombuttonwidget(),
            ],
          ),
        ),
      ),
    );
  }
}
