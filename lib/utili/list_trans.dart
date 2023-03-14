// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ListTransaction extends StatelessWidget {
  final IconData icon;
  final String header;
  final String subHeader;
  final String amount;
  final String percentage;

  const ListTransaction({
    Key? key,
    required this.icon,
    required this.header,
    required this.subHeader,
    required this.amount,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
            child: Icon(icon),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                header,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subHeader,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          SizedBox(width: 60),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                percentage,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
