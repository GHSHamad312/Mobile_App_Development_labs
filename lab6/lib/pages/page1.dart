import 'package:flutter/material.dart';
import 'package:lab6/widgets/card.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});

  final List<Map<String, String>> data = [
    {"name": "bike", "price": "50"},
    {"name": "car", "price": "20000"},
    {"name": "laptop", "price": "1000"},
    {"name": "headphones", "price": "150"},
    {"name": "phone", "price": "800"},
    {"name": "tablet", "price": "600"},
    {"name": "watch", "price": "300"},
    {"name": "shoes", "price": "80"},
    {"name": "camera", "price": "500"},
    {"name": "tv", "price": "1200"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Your Cart",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 300,
        children: [
          cards(context, data[0]),
          cards(context, data[1]),
          cards(context, data[2]),
          cards(context, data[3]),
          cards(context, data[4]),
          cards(context, data[5]),
          cards(context, data[6]),
        ],
      ),
    );
  }
}
