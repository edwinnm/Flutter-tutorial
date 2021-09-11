import 'package:flutter/material.dart';
import 'package:wordpair_generator/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(child: HomePage()),
    );
  }
}
