import 'package:flutter/material.dart';

class ShortCutTransaction extends StatelessWidget {
  final IconData icon;
  final String text;
  const ShortCutTransaction({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            color: Colors.blue,
            height: 50,
            width: 50,
            child: Icon(icon),
          ),
        ),
        SizedBox(height: 5),
        Text(
          text,
          style: TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
