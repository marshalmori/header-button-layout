import 'package:flutter/material.dart';
import 'package:header_button_layout/pages/emergency_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Emergency App',
      home: EmergencyPage(),
    );
  }
}
