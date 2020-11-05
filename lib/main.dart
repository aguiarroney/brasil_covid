// import 'package:brasil_covid/services/api_service.dart';
import 'package:brasil_covid/themes/default_theme.dart';
import 'package:brasil_covid/views/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: defaultTheme(),
      home: HomeView(),
    );
  }
}
