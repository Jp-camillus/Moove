import 'package:flutter/material.dart';
import 'package:foodapp/constants/colors.dart';

class Icontextfiedwidget extends StatefulWidget {
  const Icontextfiedwidget({super.key, required this.hint, this.controller});
  final String hint;
  final TextEditingController? controller;
  @override
  State<Icontextfiedwidget> createState() => _IcontextfiedwidgetState();
}

class _IcontextfiedwidgetState extends State<Icontextfiedwidget> {
  bool _visibilityOn = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _visibilityOn,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: Appcolors.textcolor),
        border: OutlineInputBorder(),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              _visibilityOn = !_visibilityOn;
            });
          },
          child: _visibilityOn
              ? Icon(Icons.visibility_outlined)
              : Icon(Icons.visibility_off_outlined),
        ),
      ),
    );
  }
}
