import 'package:flutter/material.dart';

import 'comp/favrite.dart';
import 'color/colors.dart' as color;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Favrite(),
      // home: Scaffold(
      //   body: Container(
      //     child: Favrite(),
      //     decoration: BoxDecoration(
      //         gradient: LinearGradient(colors: [
      //       color.AppColor.gradientFirst.withOpacity(0.8),
      //     ])),
      //   ),
      // ),
    );
  }
}
