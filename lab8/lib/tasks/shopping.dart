import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lab8/screens/productspage.dart';

class Shopping extends StatelessWidget {
  const Shopping({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Productspage());
  }
}
