import 'package:brasil_covid/services/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ApiService api = ApiService();
    api.getStateByName("rj");
    return Scaffold(
      appBar: AppBar(
        title: Text("Brasil Covid"),
      ),
      body: Container(),
    );
  }
}
