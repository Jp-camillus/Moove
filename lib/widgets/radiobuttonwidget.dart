import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({super.key, required this.tittle});
  final String tittle;
  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  bool _ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _ispressed = !_ispressed;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green),
            ),
            alignment: Alignment.center,
            child: Container(
              height: 16,
              width: 16,
              decoration: BoxDecoration(
                color: _ispressed ? Colors.green : Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
        Text(widget.tittle),
      ],
    );
  }
}
