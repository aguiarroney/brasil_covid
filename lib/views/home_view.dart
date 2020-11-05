import 'package:brasil_covid/views/view_components/custom_view.dart';
// import 'package:brasil_covid/views/view_components/traditional_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: customView(context),
    );
  }
}
