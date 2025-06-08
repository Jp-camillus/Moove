import 'package:flutter/material.dart';

class Textfieldwidget extends StatelessWidget {
  const Textfieldwidget({super.key, required this.tittle});
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text(tittle, style: TextStyle(color: Colors.grey)),
        border: OutlineInputBorder(),
      ),
    );
  }
}
