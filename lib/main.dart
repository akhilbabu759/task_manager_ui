import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'screen/home/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(debugShowCheckedModeBanner: false,
      home: Home(
        

      ),
    );
  }
}